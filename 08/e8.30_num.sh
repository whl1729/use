#!/bin/sh
# Scriptname: num
num=0
while [ $num -lt 10 ]
do
  echo -n $num
  num=`expr $num + 1`
done
echo "\nAfter loop exits, continue running here"
