#!/bin/bash

USERID=$(id -u)
 echo "User is is: $USERID"
 if [ $USERID -ne 0 ]
   then 
     echo " give the root access"
     exit 1
    fi
 dnf list installed git 
   if [ $? -ne 0 ]
      then echo " git not installed going to install"
       dnf install git -y
     else
     echo "git is already installed nothing to do"
   fi       

   dnf list installed mysql
   if [ $? -ne 0 ]
 then 
     echo "mysql is not installed going to install.."
     dnf install mysql -y
     if [ $? -ne o ]
        then 
           echo "mysql installation is failure check it.."
          exit 1
      else
          echo "mysql installation is sucess"
       fi
  else
    echo "mysql is installed nothing to do."
   fi