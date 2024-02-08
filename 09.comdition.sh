#!/bin/bash

ID=$(id -u)

if [ $ID -ne 0 ]
then
   echo "ERROR::Please run with root access"
   exit 1
else
   echo "you are root user "
fi

yum install mysql -y
if [ $? -ne 0 ]
then
   echo "error::installing mysql fallied"
   exit 1
else
   echo "mysql installed successfully"
fi
yum install git -y
if [ $? -ne 0 ]
then
   echo "installing git failed"
else
   echo "git instaled successfully"
fi