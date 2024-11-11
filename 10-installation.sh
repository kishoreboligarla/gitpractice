#!/bin/bash

USERID=$(id -u)
 echo "User is is: $USERID"
 if [ $USERID -ne 0 ]
   then 
     echo " give the root access"
     exit 1
 fi
 dnf install git -y