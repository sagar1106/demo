#!/bin/bash


# this is for monitoring the stress that is the cpu usage of certain process if increases above 50 this script should mail me the report


stress-ng --cpu 4 --cpu-load 60 --timeout 60 &


# Set CPU usage threshold
THRESHOLD=50

CPU_LOAD=$(top -bn1 | grep Cpu | awk '{print $2}')

echo "$CPU_LOAD"

# Email details
#TO_EMAIL="sagarchaudhari737@gmail.com"
SUBJECT="High CPU Usage Alert!"
MESSAGE="Warning: CPU usage is at ${CPU_LOAD}% on $(hostname) at $(date)."

# Check if CPU usage exceeds threshold

#echo "test email paul" | mail -s "prashant tutorial" sagarchaudhari737@gmail.com

CPU_LOAD=$(top -bn1 | grep Cpu | awk '{print $2}')

echo "$CPU_LOAD"

if (( $(echo "$CPU_LOAD > $THRESHOLD" | bc -l) )); then
    echo "CPU is high"
	echo $MESSAGE | mail -s $SUBJECT "sagarchaudhari737@gmail.com"

fi



