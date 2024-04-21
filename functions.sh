#!/bin/bash

USERID=$[ id -u ]
if [ $USERID -ne 0 ]
then
  echo "go with sudo access"
  exit 1
else
  echo "sudo user"
fi

VALIDATE(){
if [ $? -ne 0 ]
then
   echo "script failed"
   exit 1
else
  echo "script passed"
fi
}

 dnf install mysql -y
 VALIDATE $? "insatlling mysql"