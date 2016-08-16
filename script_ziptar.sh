#!/bin/sh

# This Script is written by Shiva Sagar (shivasagarjagini@github.com)
# How to RUN: "./script_ziptar.sh"

# Script to convert files to .zip

if [ 'find /home/ec2-user/tomcat/apache-tomcat-8.0.33/logs -type f -mtime 0' ]; then
echo "Following files are converted to .zip"
find /home/ec2-user/tomcat/apache-tomcat-8.0.33/logs -type f -name "*" -mtime 0 -print -exec gzip {} \;
find /home/ec2-user/tomcat/apache-tomcat-8.0.33/logs -type f -name *.gz
else 
echo "There are no files to zip."
fi

# Script to unzip .zip files.

#if [ 'find /home/ec2-user/tomcat/apache-tomcat-8.0.33/logs -type f -mtime 0' ]; then
#echo "Following .zip files are unzipped"
#find /home/ec2-user/tomcat/apache-tomcat-8.0.33/logs -type f -name "*" -mtime 0  -print -exec gunzip {} \;
#find /home/ec2-user/tomcat/apache-tomcat-8.0.33/logs -type f -mtime 0
#else "There are no files to unzip."
#fi

# Script to convert files to .tar

if [ 'find /home/ec2-user/tomcat/apache-tomcat-8.0.33/logs -type f -mtime +1' ]; then
echo "Files are converted to .tar"
find /home/ec2-user/tomcat/apache-tomcat-8.0.33/logs -type f -name "*" -mtime +1 -print -exec tar -c {} \;
else
echo  "There are no files to tar."
fi

echo "Restarting Tomcat"
/home/ec2-user/tomcat/apache-tomcat-8.0.33/bin/catalina.sh stop -force
/home/ec2-user/tomcat/apache-tomcat-8.0.33/bin/catalina.sh start

