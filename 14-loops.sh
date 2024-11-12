#!/bin/bash
USERID=$(id -u)

CHECK_ROOT(){
    if [ $USERID -ne 0 ]
    then
     echo "run the script with rrot priviliges"
     exit 1
     fi
}
VALIDATE(){
    if [ $? -ne 0 ]
    then
    echo "$2 is failure"
    else 
    echo "$2 is sucess"
    exit 1
    fi
}
CHECK_ROOT
  for package in $@
   do
      dnf installed list $package
     if [ $? -ne 0 ]
      then
       echo "$package is not installed, going to install it.."
        dnf install $package -y
        VALIDATE $? "Installing $package"
      else
        echo "$package is already installed..nothing to do"
      fi
   done