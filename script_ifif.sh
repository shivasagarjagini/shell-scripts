#!/usr/bin/sh

# This Script is written by Shiva Sagar (shivasagarjagini@github.com)
# Script to use multiple if.
# How to RUN: "./script_ifif.sh"

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
