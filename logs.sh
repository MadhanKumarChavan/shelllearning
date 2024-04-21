#!/bin/bash

USERID=$(id -u) #to validate root user
TIMESTAMP=$(date +%F-%H-%M-%S)
SCRIPT_NAME$(echo $0 | cut -d "." -f1)


if [ $USERID  -ne  0 ]
then
echo "please go with root acess"
   exit 1
else
echo "root user"

fi
