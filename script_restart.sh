#!/bin/sh

# This Script is written by Shiva Sagar (shivasagarjagini@github.com)
# Script to restart tomcat.
# How to RUN: "./script_restart.sh"

if [ `ls -lrt /home/ec2-user/tomcat/apache-tomcat-8.0.33/temp/ | wc -l` -lt 2 ]; then
echo "creating an empty file - empty.txt"
touch /home/ec2-user/tomcat/apache-tomcat-8.0.33/temp/empty.txt
else
echo "removing contents of temp  directory"

rm -rf /home/ec2-user/tomcat/apache-tomcat-8.0.33/temp/*
fi
echo "removing contents of work directory"
rm -rf /home/ec2-user/tomcat/apache-tomcat-8.0.33/work/*
echo "restarting tomcat"
/home/ec2-user/tomcat/apache-tomcat-8.0.33/bin/catalina.sh stop -force
/home/ec2-user/tomcat/apache-tomcat-8.0.33/bin/catalina.sh start

