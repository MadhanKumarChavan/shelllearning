#!/bin/bash

USERID=$(id -u) #to validate root user
TIMESTAMP=$(date +%F-%H-%M-%S)
echo $0


if [ $USERID  -ne  0 ]
then
echo "please go with root acess"
   exit 1
else
echo "root user"

fi
