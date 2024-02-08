#!/bin/bash

ID=$(id -u)

R="/e[31m"
G="/e[32m"
Y="/e[33m"
N="/e[0"

VALIDATE(){
    if [ $? -ne 0 ]
    then
        echo -e"error::installing  $R fallied"
        exit 1
    else
        echo -e" $G installed successfully"
    fi
}

if [ $ID -ne 0 ]
then
   echo -e"ERROR:: $R Please run with root access"
   exit 1
else
   echo -e"$G you are root user "
fi

yum install mysql -y
VALIDATE

yum install git -y
VALIDATE