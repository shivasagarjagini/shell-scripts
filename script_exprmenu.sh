p
#!/usr/bin/sh

echo "Choose an operation to be performed [1, 2, 3, 4, 5, 6, or 7]:"
echo "1. Addition"
echo "2. Subtraction"
echo "3. Multiplication"
echo "4. Division"
echo "5. Modulus"
echo "6. Exponential"
echo "7. Exit"
read oper

if [ $oper -le 6 ]; then
echo "Enter any two values for the integers X and Y"
read X Y
else
exit
fi

if [ $oper -eq 1 ]; then
echo "The sum of two integers is `expr $X + $Y`."
fi

if [ $oper -eq 2 ]; then
echo "The subtractin of two integers is `expr $X - $Y`."
fi

if [ $oper -eq 3 ]; then
echo "The multiplication of two integers is `expr $X \* $Y`."
fi

if [ $oper -eq 4 ]; then
echo "The division of two integers is `expr $X / $Y`."
fi

if [ $oper -eq 5 ]; then
echo "The modulus of two integers is `expr $X % $Y`."
fi

if [ $oper -eq 6 ]; then
echo "The exponential of two integers is `expr $X ** $Y`."
fi

#if [ $oper -eq 7 ]; then
#echo "Exiting."
#exit
#fi
