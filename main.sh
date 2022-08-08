#!/bin/bash
clear
if ! command -v sensors &> /dev/null; then
    echo "The command \"sensors\" is not found. Please install the lm-sensors package!" && exit
fi

while true; do
	sensors | grep -Eo "Core \d+:\s+\+\d+\.\d°\S+"  
	sleep 1 && clear
done
