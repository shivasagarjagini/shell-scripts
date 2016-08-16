#!/bin/sh

# This Script is written by Shiva Sagar (shivasagarjagini@github.com)
# Script to find a file.
# How to RUN: "./script_find.sh"

if [ -f /home/ec2-user/myname.txt -o `find /home/ec2-user/tomcat/apache-tomcat-8.0.33/logs -type f | wc -l` -gt 4 ]; then 
echo "Files exist"
fi
