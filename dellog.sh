#!/bin/bash

SOURCE_dir=/tmp/applogs

if [ -d $SOURCE_dir ]
then
 echo " source file exist"
else
 echo " $SOURCE_dir file not found"
 exit 1
fi

FILES=$( find . $SOURCE_dir -name "*.log" -mtime +14 )

while IFS= read -r line
do
  echo "zip file: $line"
   mv $line /tmp/dellogs
done <<< $FILES