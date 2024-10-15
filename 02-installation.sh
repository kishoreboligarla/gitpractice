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
     if [ &? -ne 0 ]
          echo "git installation is not sucess pls check it.."
          exit 1
      else
          echo "git installation is sucess"
         fi
   else
   echo "git already installed nothing to do"
  fi 

 
