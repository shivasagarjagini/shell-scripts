#!/bin/sh

# This Script is written by Shiva Sagar (shivasagarjagini@github.com)
# Script to search a file or word in file.
# How to RUN: "./script_search.sh"

echo "Enter a filename:"
read f
echo "Enter a word:"
read w

if [ $(find / -type f -name $f 2>/dev/null |echo $?) -eq 0 ]; then
echo "The file '$f' is located at '`find / -type f -name $f 2>/dev/null | pwd`'."
echo "Searching for word '$w' in file '$f'..."
 if [ $(find / -type f -name $f 2>/dev/null | grep -i $w | echo $?) -eq 0 ]; then
 echo "The file '$f' contains word '$w'."
 else
 echo "The file '$f' doesnot contain word '$w'."
 fi
else
echo "There is no file with name '$f'"
fi

