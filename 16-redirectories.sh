  #!/bin/bash
  USERID=$(id -u)
  R="\e[31m"
  G="\e[32m"
  Y="\e[33m"
  N="\e[0m"
  LOGS_FOLDER="/varlogs/shell-script"
  SCRIPT_NAME"$(echo $0 | cut -d "." -f1)
  LOG_FILES="$LOGS_FOLDER/$SCRIPT_NAME-$TIMESTAMP.log"
  mkdir -p $LOGS_FOLDER

  CHECK_ROOT(){
      if [ $USERID -ne 0 ]
      then
      echo "run the script with root priviliges" >>&$LOG_FILES
      exit 1
      fi
  }
  USAGE(){
  echo "USEAGE :: sudo sh 16-redirectories.sh package1 package2 ...">>&$LOG_FILES
  exit 1
  }
  VALIDATE(){
      if [ $? -ne 0 ]
      then
      echo "$2 is $R failure $N">>&$LOG_FILES
      else 
      echo -e  "$2 is $R  sucess $N">>&$LOG_FILES
      exit 1
      fi
  }
  CHECK_ROOT

  if [ $# -ne 0 ]
  then 
  USEAGE
  fi
    for package in $@
    do
        dnf list installed  $package
      if [ $? -ne 0 ]
        then
        echo  -e  "$package $Y is not installed, going to install it.. $N">>&$LOG_FILES
          dnf  install $package -y
          VALIDATE $? "Installing $package"
        else
          echo -e  "$package $G is already installed..nothing to do $N">>&$LOG_FILES
        fi
    done