#!/bin/bash
# Scriptname: num
num=0
while (( ${num} < 10 )); do
  echo -n "${num} "
  let num+=1
done
echo -e "\nAfter loop exits, continue running here"
