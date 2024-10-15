#!bin/bash
USERID=$(id -u)
echo "user id is: $USERID"
  if [ $USERID -ne 0 ]
  then
       echo "to install mysql give the root acess"
      exit 1
  fi
dnf list install git 
  if [ $? -ne 0 ]
  then 
     echo "git not installed going to install.."
     dnf install git -y
   else
   echo "git already installed nothing to do"
fi


 
