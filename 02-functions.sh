#!/bin/bash

USERID=$(id -u)

R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"


VALIDATE(){
    if [ $1 -ne 0 ]
    then
       echo -e "$2 ---$R FAILURE $N"
       exit 1
    else
       echo -e "$2 ---$G SUCCESS $N"
     fi
}

if [ $USERID -ne 0 ]
then
   echo "ERRoR::you have must sudo access to execute this script"
   exit 1
fi

dnf list installed mysql

if [ $? -ne 0 ]
then
   dnf install mysql -y
   VALIDATE $? "installing MYSQL"
else
   echo "MYSQL is alredy ---- INSTALLED"
fi

dnf list installed git

fi [ $? -ne 0 ]
then
   dnf install git -y
   VALIDATE $? "installing GIT"
else
   echo "GIT is alredy ---- INSTALLED"
fi
