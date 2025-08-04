#!/bin/bash

icon=""

# === GPU USAGE ===
gpu_output=$(radeontop -d - -l 1 2>/dev/null | grep -m 1 "gpu")
gpu_usage=$(echo "$gpu_output" | grep -oP 'gpu \K[0-9.]+' | cut -d. -f1)

# Fallback if missing
[ -z "$gpu_usage" ] && gpu_usage="N/A"

# === VRAM USAGE ===
vram_used_file="/sys/class/drm/card0/device/mem_info_vram_used"
vram_total_file="/sys/class/drm/card0/device/mem_info_vram_total"

if [[ -f $vram_used_file && -f $vram_total_file ]]; then
    vram_used_kb=$(($(cat "$vram_used_file") / 1024))
    vram_total_kb=$(($(cat "$vram_total_file") / 1024))
    vram_used_mb=$((vram_used_kb / 1024))
    vram_total_mb=$((vram_total_kb / 1024))
    vram_percent=$((100 * vram_used_kb / vram_total_kb))
    vram_display="${vram_used_mb}MiB / ${vram_total_mb}MiB (${vram_percent}%)"
else
    vram_display="N/A"
fi

# === TOP PROCESSES ===
process_list=$(radeontop -d - -l 1 2>/dev/null | grep -A 10 "gpu" | tail -n +2 | sed 's/^ *//;s/ *$//' | grep -v '^$' | head -5)

if [ -z "$process_list" ]; then
    process_list="No GPU-intensive processes found"
fi

# === TOOLTIP ===
tooltip="AMD GPU Usage: ${gpu_usage}%\nTop Processes:\n$process_list"
escaped_tooltip="${tooltip//\"/\\\"}"

# === JSON OUTPUT ===
echo "{\"text\": \"$icon ${gpu_usage}%\", \"tooltip\": \"$escaped_tooltip\"}"

