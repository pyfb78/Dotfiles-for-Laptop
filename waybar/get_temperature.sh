 #!/bin/bash

# Get CPU temperature (works for most Linux distros)
cpu_temp=$(sensors | awk '/Core 0/ {print $3}' | tr -d '+°C')

# Get GPU temperature (NVIDIA)
gpu_temp=$(rocm-smi --showtemp --json)

# Print in the format expected by Waybar
echo "CPU: ${cpu_temp}°C | GPU: ${gpu_temp}°C"

