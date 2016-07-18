#!/usr/bin/sh

echo "Input lengths of sides A B C with space in between:"
read A B C
if [ $A -eq $B ]; then 
  if [ $B -eq $C ]; then
  echo "It is an equilateral triangle."
  else
  echo "It is an isolated triangle."
  fi
else
echo "It is a scalane triangle."
fi
