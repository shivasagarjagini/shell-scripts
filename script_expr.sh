#!/usr/bin/sh
#This scrip is written by Shiva.
#This is the script for performing arithmetic operations.

echo "Input values A and B for results"
read A B
echo "The addition of given input is ="
expr $A + $B
echo "The subtraction of given input is ="
expr $A - $B
echo "The multiplication of given input is ="
expr $A \* $B
echo "The division of given input is ="
expr $A / $B
echo $shiva
echo $1 $2

