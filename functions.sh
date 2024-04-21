#!/bin/bash

USERID=$[ id -u ]
TIMESTAMP=$(date +%F-%H-%M-%S)
SCRIPT_NAME=$(echo $0 | cut -d "." -f1)
LOGFILE=/tmp/$SCRIPT_NAME-$TIMESTAMP-$USERID.log
if [ $USERID -ne 0 ]
then
  echo -e "\e[31m go with sudo access"
  exit 1
else
  echo -e "\e[32m sudo user"
fi

VALIDATE(){
if [ $? -ne 0 ]
then
   echo -e "\e[31m script failed"
   exit 1
else
  echo -e "\e[32m script passed"
fi
}

 dnf install mysql -y &>>$LOGFILE
 VALIDATE $? "insatlling mysql"