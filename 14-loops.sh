#!/bin/bash
USERID=$(id -u)
R=/e[30m
G=/e[31m
Y=/e[32m
N=/e[0m

CHECK_ROOT(){
    if [ $USERID -ne 0 ]
    then
     echo "run the script with root priviliges"
     exit 1
     fi
}
VALIDATE(){
    if [ $? -ne 0 ]
    then
    echo "$2 is failure"
    else 
    echo -e $R "$2 is sucess$N"
    exit 1
    fi
}
CHECK_ROOT
  for package in $@
   do
      dnf list installed  $package
     if [ $? -ne 0 ]
      then
       echo  -e $Y "$package is not installed, going to install it.. $N"
        dnf  install $package -y
        VALIDATE $? "Installing $package"
      else
        echo -e $G "$package is already installed..nothing to do $N"
      fi
   done