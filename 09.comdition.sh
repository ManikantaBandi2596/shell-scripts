#!/bin/bash

ID = $(id -u)

if [ $ID -ne 0]
then
   echo "ERROR::Please run with root access"
else
   echo "Running wirh root access "
fi