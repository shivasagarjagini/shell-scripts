#!/usr/bin/sh
# Name: Shiva Sagar
# This script creates a backup of error_log file.

# Date format for month date year
today=`date +"%m%d%Y"`

# Copies a file with name "file_todaydate"
cp /home/ec2-user/httpd-2.4.20/logs/error_log /home/ec2-user/httpd-2.4.20/logs/error_log_$today

# Empties log file
cat /dev/null > /home/ec2-user/httpd-2.4.20/logs/error_log

# Crontab set to repeat this script everyday automatically at 11:59 PM.

