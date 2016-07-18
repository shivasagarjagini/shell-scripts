#!/usr/bin/sh

# This Script is written by Shiva Sagar (shivasagarjagini@github.com)
# Script to print tables.
# How to RUN: "./script_table.sh"

echo "Enter the number to display table"
read n
echo "Enter the number of of terms for table"
read t

for((i=1;i<=$t;i++))
do
echo "$n X $i = `expr $n \* $i`"
done
