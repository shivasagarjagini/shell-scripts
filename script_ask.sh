#!/bin/sh

# This Script is written by Shiva Sagar (shivasagarjagini@github.com)
# Script to print your full name and username.
# How to RUN: "./script_ask.sh"

echo "Enter your full name"
read name
echo "Your name is $name and your username is `echo $LOGNAME`"
