#!bin/bash
USERID=$(id -u)
echo "user id is: $USERID"
if  USERID=0
else 
echo "to install mysql give the root acess"
