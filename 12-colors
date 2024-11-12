#!/bin/bash/dnf
USERID=$(id -u)
R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"


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
  echo "$2 $Rfailled"
  exit 1
  else
  echo "$2 $Gsuccess"
  fi
}
 CHECK_ROOT
 dnf list installed mysql
  if [ $? -ne 0 ]
  then
  echo "mysql is not installed going to install"
  dnf install mysql -y
  VALIDATE $? mysqlinstalling
  else 
   echo "mysql is installed nothing to do"
   fi
   CHECK_ROOT
 dnf list installed git
  if [ $? -ne 0 ]
  then
  echo "git is not installed going to install"
  dnf install git -y
  VALIDATE $? gitinstalling
  else 
   echo -e "$G git is installed nothing to do"
   fi