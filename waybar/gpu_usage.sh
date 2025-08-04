##!/bin/bash

## Try to get GPU usage from radeontop
#gpu_output=$(radeontop -d - -l 1 | grep -m 1 "gpu")
#gpu_usage=$(echo "$gpu_output" | grep -oP 'gpu \K[0-9.]+')

## Fallback if radeontop fails or returns empty
#if [ -z "$gpu_usage" ]; then
#  gpu_usage="N/A"
#fi

## Display icon
#icon=""

## Tooltip content
#tooltip="AMD GPU Usage: $gpu_usage%"

## Output in Waybar-compatible JSON format
#echo "{\"text\": \"$icon $gpu_usage%\", \"tooltip\": \"${tooltip//\"/\\\"}\"}"

#!/bin/bash

# Get battery status from acpi
info=$(acpi)
icon=""
charge=$(echo "$info" | grep -oP '\d+(?=%)')

# Extract time remaining (if present)
# It usually appears like "xx:yy:zz remaining" or "xx:yy:zz until charged"
time_left=$(echo "$info" | grep -oP '\d{2}:\d{2}:\d{2}')

# Get the current time
current_time=$(date +"%H:%M:%S")

# Determine the battery icon based on charge percentage
if [[ "$info" == *"Charging"* ]]; then
    icon=""
else
    if [ "$charge" -gt 87 ]; then
        icon=""
    elif [ "$charge" -gt 63 ]; then
        icon=""
    elif [ "$charge" -gt 40 ]; then
        icon=""
    elif [ "$charge" -gt 15 ]; then
        icon=""
    else
        icon=""
    fi
fi

# Format tooltip message
tooltip="Battery: $charge%"
if [[ -n "$time_left" ]]; then
    if [[ "$info" == *"Charging"* ]]; then
        tooltip+="\nTime to full: $time_left"
    else
        tooltip+="\nTime remaining: $time_left"
    fi
fi
# tooltip+="\nTime now: $current_time"

# Output JSON
echo "{\"text\": \"$icon $charge%\", \"tooltip\": \"${tooltip//\"/\\\"}\"}"
