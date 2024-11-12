#!/bin/bash


    USERID=$(id -u) 
    echo "user id is:$USERID"
  
  VALIDATE()
       {
          if [ $1 -ne 0 ]
          then 
           echo "$2 is not installed going to install it.."
          
         else
           echo"$2 is alreay installed ... nothing to do"
           fi
       }
        if [ $USERID -ne 0 ]
            then 
               echo "give the root priviliges"
               exit 1
               fi 
          dnf installed mysql
         VALIDATE $? mysql
            dnf install mysql -y
            
     