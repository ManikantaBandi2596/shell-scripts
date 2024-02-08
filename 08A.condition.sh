#!/bin/bash

CLASS=$1

if [ $CLASS -le 10]
then
   echo "IT IS STORED AS PRIVATE"
else
   echo "IT IS STOFRED AS PUBLIC"
fi