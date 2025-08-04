#!/bin/sh
rocm-smi --query-gpu=utilization.gpu --format=csv,noheader,nounits | awk '{print "gpu " $1 "%"}'

