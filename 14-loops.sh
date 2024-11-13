  #!/bin/bash
  USERID=$(id -u)
  R="\e[31m"
  G="\e[32m"
  Y="\e[33m"
  N="\e[0m"

  CHECK_ROOT(){
      if [ $USERID -ne 0 ]
      then
      echo "run the script with root priviliges"
      exit 1
      fi
  }
  VALIDATE(){
      if [ $? -ne 0 ]
      then
      echo "$2 is $R failure $N"
            exit 1

      else 
      echo -e  "$2 is $R  sucess $N"
      fi
  }
  CHECK_ROOT
    for package in $@
    do
        dnf list installed  $package
      if [ $? -ne 0 ]
        then
        echo  -e  "$package $Y is not installed, going to install it.. $N"
          dnf  install $package -y
          VALIDATE $? "Installing $package"
        else
          echo -e  "$package $G is already installed..nothing to do $N"
        fi
    done