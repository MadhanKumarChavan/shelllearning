#!/bin/bash

USERID=$(id -u)

if [ $USERID is -ne  0 ]
then
echo please go with root acess
 exit 1

else

echo root user

fi
