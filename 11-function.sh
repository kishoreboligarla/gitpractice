#!/bin/bash
USERID=$(ID -U)
CHECK_ROOT(){
  if [ USERID -ne 0 ]
  then 
  echo"run the script with root priviliges"
}

VALIDATE(){
  if [ $1 -ne 0 ]
  then
  echo"$2 failled"
  exit1
  fi
  else
  echo "$2 success"
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