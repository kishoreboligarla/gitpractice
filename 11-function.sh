#!/bin/bash
USERID=$(id -u)
CHECK_ROOT(){
  if [ $USERID -ne 0 ]
  then 
  echo "run the script with root priviliges"
  exit 1
  fi
    }

VALIDATE(){
  if [ $1 -ne 0 ]
  then
  echo"$2 failled"
  exit 1
  else
  echo "$2 success"
  fi
}
 CHECK_ROOT
 dnf installed mysql
  if [ $? -ne 0 ]
  then
  echo "mysql is not installed going to install"
  dnf install mysql -y
  VALIDATE $? mysqlinstalling
  else 
   echo"mysql is installed nothing to do"