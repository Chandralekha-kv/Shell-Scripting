#!/bin/bash

#Get current CPU usage
cpu=$(top -bn1 | grep "CPU" | awk '{print int(100 - $8)}')

#Set threshold
threshold=70

#Check CPU usage
if [ "$cpu" -gt "$threshold" ]
then
	echo "High CPU usage: $cpu%"
else
	echo "CPU usage is normal: $cpu%"
fi
