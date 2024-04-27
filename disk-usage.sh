#!/bin/bash

DISK_USAGE=$( df -hT | grep xfs )
DISK_THERSHOLD=10

while IFS= read -r line
do
  USAGE=$(echo $line | grep xfs | awk -F " " '{print$6F} ' | cut -d "%" -f1)
  FOLDER=$(echo $line | awk -F " " '{print$NF}')
  if [ $USAGE -ge $DISK_THERSHOLD ]
  then
  echo "$FOLDER is more than $DISK_THERSHOLD, current usage: $USAGE"
  fi

done <<< $DISK_USAGE
