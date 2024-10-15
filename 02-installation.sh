#!bin/bash
USERID=$(id -u)
echo "user id is: $USERID"
if [ $USERID -ne 0 ]
then
echo "to install mysql give the root acess"
fi
dnf list installed git
 
