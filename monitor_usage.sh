#!/bin/bash

# Function to monitor CPU and disk usage
monitor_usage() {
  # Get current date and time
  DATE=$(date +"%Y-%m-%d_%H-%M-%S")

  # Get CPU usage
  CPU=$(top -b -n1 | awk '/^%Cpu/ {print $2}')

  # Get disk usage
  DISK=$(df -h | awk '/\/$/ {print $5}')

  # Save output to file
  echo "$DATE, CPU: $CPU, Disk: $DISK" >> usage.log
}

# Run the monitoring function
monitor_usage

# Schedule the script to run every 2 hours using cron
echo "0 */2 * * * /path/to/script/monitor_usage.sh" | crontab -
