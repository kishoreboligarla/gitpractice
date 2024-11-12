#!/bin/bash


    USERID=$(id -u) 
    echo "user id is:$USERID"
    USERID(ne -0)
      then 
      echo "give the root priviliges"
     
  VALIDATE()
       {
          if [ $1 -ne 0 ]
          then 
           echo "$2 is not installed going to install it.."
           dnf install mysql -y
         else
           echo"mysql is alreay installed ... nothing to do"
           fi
       }