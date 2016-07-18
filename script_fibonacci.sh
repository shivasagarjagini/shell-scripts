#!/usr/bin/sh

echo "Enter number of terms to be generated:"
read n
a=0
b=1
c=2
echo "Fibonacci series upto $n numbers."
echo "$a"
echo "$b"
while [ $c -lt $n ]
do
  c=`expr $c + 1`
  d=`expr $a + $b`
  echo "$d"
  a=$b
  b=$d
done
