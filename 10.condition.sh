#!/bin/bash

ID=$(id -u)

VALIDATE(){
    if [ $? -ne 0 ]
    then
        echo "error::installing  fallied"
        exit 1
    else
        echo " installed successfully"
    fi
}

if [ $ID -ne 0 ]
then
   echo "ERROR::Please run with root access"
   exit 1
else
   echo "you are root user "
fi

yum install mysql -y
VALIDATE

yum install git -y
VALIDATE