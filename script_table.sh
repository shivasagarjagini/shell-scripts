#!/usr/bin/sh

echo "Enter the number to display table"
read n
echo "Enter the number of of terms for table"
read t

for((i=1;i<=$t;i++))
do
echo "$n X $i = `expr $n \* $i`"
done
