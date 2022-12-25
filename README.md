# monitor-usage-shell-script

This script includes a function called monitor_usage that retrieves the current date and time, as well as the CPU and disk usage on the system. It then saves this information to a file called usage.log. The script also includes a line that schedules the monitor_usage function to run every 2 hours using cron.

To use this script, you will need to save it to a file on your Linux system and make it executable using the chmod command. You will also need to modify the path to the script in the cron job to the correct location on your system. Once the script is set up, it will run automatically every 2 hours and save the output to the usage.log file.

Note that this is just one example of how you could set up a script to monitor CPU and disk usage on a Linux system, and you may need to modify the script to fit your specific requirements.
