#!/bin/bash
clear
if ! command -v sensors &> /dev/null; then
    echo "The command \"sensors\" is not found. Please install the lm-sensors package!" && exit
fi

while true; do
	sensors | grep -Eo "Core [0-9]+:\s+\+[0-9]+\.[0-9]°\S+"  
	sleep 1 && clear
done
