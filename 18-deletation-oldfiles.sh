#!/bin/bash
SOURCE_DIR=/home/ec2-user/logs
if [ -d $SOURCE_DIR ]
 then
  echo " $SOURCE_DIR EXISTS"
else
   echo "$SOURCE_DIR not exists"
    exit 1
    fi 
    FILES=$(find $SOURCE_DIR -name "*.log" -mtime +14)
 echo "Files: $FILES"
