#!/usr/bin/sh

# This Script is written by Shiva Sagar (shivasagarjagini@github.com)
# Script to find even or odd number.
# How to RUN: "./script_evenodd.sh"

echo "Enter a number"
read n
rem=$(( $n % 2 ))
if [ $rem -eq 0 ]; then
echo "$n is an even number"
else
echo "$n is an odd number" 
fi
