#!/bin/bash

ROOT_CHECK()
 {
    USERID=(id -u)
    echo "user id is:$USERID"
    then 
     echo "$1 is not installed going to install.."
    else
     echo " give the root priviliges to install it"
 }
VALIDATION()
   {
    echo $1 -ne 0
    then 
       echo " $2 is failed.."
       exit 1
    else
       echo " $2 is sucess"
    fi
   } 