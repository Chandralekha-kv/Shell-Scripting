#!/bin/bash

#Get disk usage
usage=$(df / | grep / |awk '{print $5}' | sed 's/%//g')

#Check if usuage is empty
if [ -z "$usage" ]; then
	echo "Error: Unable to fetch disk usage"
	exit 1
fi

#Set threshold
threshold=80

#Compare usage with threshold
if [ "$usage" -gt "$threshold" ]; then
	echo "Disk usuage is high: $usage%"
else
	echo "Disk usage is normal: $usage%"
fi
