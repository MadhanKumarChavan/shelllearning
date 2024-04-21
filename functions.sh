#!/bin/bash

USERID=$[ id -u ]
TIMESTAMP=$(date +%F-%H-%M-%S)
SCRIPT_NAME=$($0 | cut -d "." -f1)
LOGFILE=/tmp/$SCRIPT_NAME-$TIMESTAMP-$USERID.log
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