#!/usr/bin/sh

echo "Enter a number"
read n
#rem=$(( $n % 2 ))
if [ `expr $n % 2` -eq 0 ]; then
echo "$n is an even number"
else
echo "$n is an odd number" 
fi
