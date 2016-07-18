#!/usr/bin/sh

if [ $# -ne 2 ]; then
echo "Usage: add [first integer] [second interger]"
else
echo "The sum of $1 and $2 is `expr $1 + $2`"
fi

