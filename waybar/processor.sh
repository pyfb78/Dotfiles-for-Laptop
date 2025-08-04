#!/bin/bash

ICON=""

get_cpu_usage() {
    local usage_line; usage_line=$(top -bn1 | grep "Cpu(s)")
    if [[ -z $usage_line ]]; then
        printf "Failed to retrieve CPU usage\n" >&2
        return 1
    fi

    local idle; idle=$(awk '{print $8}' <<< "$usage_line" | cut -d. -f1)
    if [[ -z $idle ]]; then
        printf "Failed to parse CPU idle value\n" >&2
        return 1
    fi

    CPU_USAGE=$((100 - idle))
}

get_top_processes() {
    local ps_output; ps_output=$(ps -eo pid,comm,%cpu --sort=-%cpu)
    if [[ -z $ps_output ]]; then
        printf "Failed to retrieve process list\n" >&2
        return 1
    fi

    local filtered; filtered=$(printf "%s\n" "$ps_output" | awk '
        NR==1 { next }
        !($2 ~ /^ps$/ || $2 ~ /^Isolated$/) {
            printf "PID: %s | CPU: %s%% | CMD: %s\n", $1, $3, $2
            count++
            if (count == 5) exit
        }')
    
    if [[ -z $filtered ]]; then
        TOP_PROCESSES="No matching processes"
    else
        TOP_PROCESSES=$filtered
    fi
}

get_core_usages() {
    if ! command -v mpstat &> /dev/null; then
        CORE_USAGES="mpstat not installed"
        return
    fi

    local mpstat_output; mpstat_output=$(mpstat -P ALL 1 1)
    if [[ -z $mpstat_output ]]; then
        CORE_USAGES="Failed to retrieve core usage"
        return
    fi

    local parsed; parsed=$(awk '
        /^[0-9]/ {
            cpu=$3;
            if (cpu != "all" && cpu != "Isolated") {
                usage=100 - $NF;
                printf "CPU%s: %.0f%%\n", cpu, usage;
            }
        }' <<< "$mpstat_output")

    if [[ -z $parsed ]]; then
        CORE_USAGES="No valid core usage data"
    else
        CORE_USAGES=$parsed
    fi
}

format_output() {
    local tooltip="Top CPU Processes:\n$TOP_PROCESSES\n\nPer-Core Usage:\n$CORE_USAGES"
    local escaped_tooltip; escaped_tooltip=$(echo "$tooltip" | sed ':a;N;$!ba;s/\n/\\n/g' | sed 's/"/\\"/g')
    printf '{"text": "%s %s%%", "tooltip": "%s"}\n' "$ICON" "$CPU_USAGE" "$escaped_tooltip"
}

main() {
    get_cpu_usage || return 1
    get_top_processes || return 1
    get_core_usages
    format_output
}

main

