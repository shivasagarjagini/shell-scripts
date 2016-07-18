#!/usr/bin/sh

if [ -f /home/ec2-user/myname.txt -o `find /home/ec2-user/tomcat/apache-tomcat-8.0.33/logs -type f | wc -l` -gt 4 ]; then 
echo "Files exist"
fi
