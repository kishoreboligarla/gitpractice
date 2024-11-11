#!/bin/bash

USERID=$(id -u)
 echo "User is is: $USERID"
 if [ $USERID -ne 0 ]
   then 
     echo " give the root access"
     exit 1
 fi
 dnf installed git 
   if [ $? -ne 0 ]
     then echo " mysql not installed going to install"
       dnf install git -y
 else
     echo "git is already installed nothing to do"
 fi       