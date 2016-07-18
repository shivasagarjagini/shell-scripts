#!/usr/bin/sh
# This script is written by Shiva. For any corcerns contact @gmail.com

if [ 'find /home/ec2-user/tomcat/apache-tomcat-8.0.33/logs -type f -size 0' ]; then
echo "Following files are empty files"
find /home/ec2-user/tomcat/apache-tomcat-8.0.33/logs -type f -size 0
else "There are no files empty files in logs."
fi

echo "Restarting Tomcat"
/home/ec2-user/tomcat/apache-tomcat-8.0.33/bin/catalina.sh stop -force
/home/ec2-user/tomcat/apache-tomcat-8.0.33/bin/catalina.sh start
