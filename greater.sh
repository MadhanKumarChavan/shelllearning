#!/bin/bash

#shell script to find the greatest of two numbers

# echo "Enter Num1"
# read -s num1
# echo "Enter Num2"
# read -s num2

a=$num1
b=$num2

if [ $a -gt $b ]
then
    echo $a is greater
else
    echo $b is greater
fi