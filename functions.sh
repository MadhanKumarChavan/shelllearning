#!/bin/bash

USERID=$[ id -u ]
TIMESTAMP=$(date +%F-%H-%M-%S)
SCRIPT_NAME=$(echo $0 | cut -d "." -f1)
LOGFILE=/tmp/$SCRIPT_NAME-$TIMESTAMP-$USERID.log

### colours varaibales
R="\e31m"
G="\e32m"
Y="\e33m"

if [ $USERID -ne 0 ]
then
  echo -e   $R"  RUN with sudo access"$N
  exit 1
else
  echo -e  $G" RUNNING with sudo user"$N
fi

VALIDATE(){
if [ $? -ne 0 ]
then
   echo -e  $R"script failed"$N
   exit 1
else
  echo -e $R"script passed"$N
fi
}

 dnf install mysql -y &>>$LOGFILE
 VALIDATE $? "insatlling mysql"


 