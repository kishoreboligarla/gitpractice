  #!/bin/bash
  USERID=$(id -u)
  R="\e[31m"
  G="\e[32m"
  Y="\e[33m"
  N="\e[0m"
  LOGS_FOLDER="/var/log/shell-script"
  SCRIPT_NAME=$(echo $0 | cut -d "." -f1)
  TIMESTAMP=$(date +%Y-%m-%d-%H-%M-%S)
  LOG_FILE="$LOGS_FOLDER/$SCRIPT_NAME-$TIMESTAMP.log"
  mkdir -p $LOGS_FOLDER
  CHECK_ROOT(){
      if [ $USERID -ne 0 ]
      then
      echo "run the script with root priviliges" | tee -a $LOG_FILE
      exit 1
      fi
  }
  VALIDATE(){
      if [ $1 -ne 0 ]
      then-
      echo "$2 is $R failure $N"  &>>$LOG_FILE | tee -a $LOG_FILE
      exit 1
      else 
      echo -e  "$2 is $R  sucess $N"  &>>$LOG_FILE | tee -a $LOG_FILE
      exit 1
      fi
  }
  echo "script started at : $(date)" &>>$LOG_FILE | tee -a $LOG_FILE
   
  USEAGE(){
  echo "USEAGE :: sudo sh 16-redirectories.sh package1 package2 ..." | tee -a $LOG_FILE
  exit 1
  }
  CHECK_ROOT

  if [ $# -eq 0 ]
  then 
  USEAGE
  fi
    for package in $@
    do
        dnf list installed  $package $LOG_FILE
      if [ $? -ne 0 ]
        then
        echo  -e  "$package $Y is not installed, going to install it.. $N"  | tee -a $LOG_FILE
          dnf  install $package -y &>>$LOG_FILE
          VALIDATE $? "Installing $package"
        else
          echo -e  "$package $G is already installed..nothing to do $N" | tee -a $LOG_FILE
          fi
    done