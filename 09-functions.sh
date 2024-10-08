#!bin/bash

DATE=$(date +%F)
SCRIPT_NAME=$0
LOG_FILE=/tmp/$SCRIPT_NAME-$DATE.log

R="\e[31m"
G="\e[32m"
N="\e[0m"

VALIDATE(){
   if [ $1 -ne 0 ]
    then 
      echo -e "$2 ... $R FAILURE $N"
      exit 1

    else 
      echo -e "$2 .... $G SUCCESS $N"

 fi
}

USERID=$(id -u)

if [ $USERID -ne 0 ]
then
    echo "ERROR:: Please run this script with root access"
    exit 1
# else
#     echo "INFO:: You are root user"
fi

# it is our responsibility again to check installation is success or not
yum install mysql -y &>>$LOG_FILE

VALIDATE $? "Installing MySQL"

yum install postfix -y &>>$LOG_FILE

VALIDATE $? "Installing postfix"