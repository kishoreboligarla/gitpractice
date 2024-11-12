#!/bin/bash

# ROOT_CHECK()
#  {
    USERID=$(id -u) 
    echo "user id is:$USERID"
    USERID( ne -0 )
      then 
      echo "give the root priviliges"
     
#  }
# VALIDATION()
#    {
#     echo $1 -ne 0
#     then 
#        echo " $2 is failed.."
#        exit 1
#     else
#        echo " $2 is sucess"
#     fi
#    } 