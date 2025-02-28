 #!/bin/bash

# Set CPU threshold
THRESHOLD=40

# Get CPU usage
CPU_USAGE=$(top -bn1 | grep "Cpu(s)" | awk '{print $2}' | cut -d'.' -f1)

# Email details
TO_EMAIL="sagarchaudhari737@gmail.com"
SUBJECT="High CPU Usage Alert"
MESSAGE="Warning! CPU usage is at ${CPU_USAGE}% on $(hostname) at $(date)"

# Check CPU usage and send email if above threshold

if (( "$CPU_USAGE" > "$THRESHOLD" )); then
    echo "$MESSAGE" | mail -s "$SUBJECT" "$TO_EMAIL"
    echo "Alert email sent: CPU usage is $CPU_USAGE%"
else
    echo "CPU usage is normal: $CPU_USAGE%"
fi  
