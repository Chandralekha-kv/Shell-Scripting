#!/bin/bash

#Define the process name
process="nginx"

if ps -ef | grep $process | grep -v grep > /dev/null
then
	echo "$process is running"
else
	echo "$process is not running"
fi
