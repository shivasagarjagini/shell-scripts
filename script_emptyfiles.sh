#!/usr/bin/sh

# This Script is written by Shiva Sagar (shivasagarjagini@github.com)
# Script to display empty files in a path.
# How to RUN: "./script_emptyfiles.sh"

if [ 'find /home/ec2-user/tomcat/apache-tomcat-8.0.33/logs -type f -size 0' ]; then
echo "Following files are empty files"
find /home/ec2-user/tomcat/apache-tomcat-8.0.33/logs -type f -size 0
else "There are no files empty files in logs."
fi

echo "Restarting Tomcat"
/home/ec2-user/tomcat/apache-tomcat-8.0.33/bin/catalina.sh stop -force
/home/ec2-user/tomcat/apache-tomcat-8.0.33/bin/catalina.sh start
