#!/bin/bash

#shell script to find the greatest of two numbers

# echo "Enter Num1"
# read -s num1
# echo "Enter Num2"
# read -s num2

a=$num1

if [ $a -gt 100 ]
then
    echo $a is greater
else
    echo $a is lower
fi