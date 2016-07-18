#!/usr/bin/sh

# This Script is written by Shiva Sagar (shivasagarjagini@github.com)
# Script to perform addition of two integers
# How to RUN: "./script_add.sh [first integer] [second integer]"

if [ $# -ne 2 ]; then
echo "command execution error"
else
echo $1 $2
echo "The sum of $1 and $2 is `expr $1 + $2`"
fi

# How to RUN: "./script_add.sh"

#echo "Please enter the first integer:"
#read "first"
#echo "Please enter the second integer:"
#read "second"
#echo "The sum of integers $first and $second are `expr $first + $second`."
