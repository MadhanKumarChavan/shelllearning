#!/bin/bash

SOURCE_dir=/tmp/applogs

if [ -d $SOURCE_dir ]
then
 echo " source file exist"
else
 echo " $SOURCE_dir file not found"
 exit 1
fi