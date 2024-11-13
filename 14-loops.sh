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
      dnf list installed  $package
     if [ $? -ne 0 ]
      then
       echo "$package is not installed, going to install it.."
        dnf list install $package -y
        VALIDATE $? "Installing $package"
      else
        echo "$package is already installed..nothing to do"
      fi
   done