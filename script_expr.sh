#!/bin/sh

# This Script is written by Shiva Sagar (shivasagarjagini@github.com)
# Script to display addition, subtraction, multiplication, division and mod of two integers.
# How to RUN: "./script_expr.sh"

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

