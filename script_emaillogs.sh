#!/usr/bin/sh
#This is scrip is written by Shiva. For any concerns contact @gmail.com

if [ `find /home/ec2-user/tomcat/apache-tomcat-8.0.33/logs -type f | wc -l` -gt 4 ]; then
#mail -s "Alert" shivasagarjagini@gmail.com
echo "Number of files are `find /home/ec2-user/tomcat/apache-tomcat-8.0.33/logs -type f | wc -l`"
else
echo "There are no new files in log"
fi
