#!/bin/sh
clear
while true;
do

	sensors | grep -Eo "Core [0-9]+:\s+\+[0-9]+\.[0-9]°\S+"  
	sleep 1
	clear
done

