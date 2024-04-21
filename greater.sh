#!/bin/bash

#shell script to find the greatest of two numbers

# echo "Enter Num1"
# read -s num1
# echo "Enter Num2"
# read -s num2

a=$num1
b=$num2

if [ $num1 -gt $num2 ]
then
    echo $num1 is greater
else
    echo $num2 is greater
fi