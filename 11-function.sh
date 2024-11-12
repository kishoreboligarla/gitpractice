#!/bin/bash

USERID=$(id -u)
CHECK_ROOT(){
  if [ $USERID -ne 0 ]
  then 
  echo "run the script with root access"
}
 VALIDATE(){
  if [ $1 -ne 0 ]
  then 
  echo "$2 is failed"
  exit 1
  fi
  else 
  echo "$2 is sucess"
 }
  dnf installed git
  if [ $? -ne o ]
   then 
    echo " git is not installed going to install it"
    dnf install git
    VALIDATE $? git installing
    else 
    echo "git alredy intalled nothing todo."
    dnf installedmysql git
  if [ $? -ne o ]
   then 
    echo " mysql is not installed going to install it"
    dnf install mysql
    VALIDATE $? mysql installing
    else 
    echo "mysql alredy intalled nothing todo."
    