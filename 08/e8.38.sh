#!/bin/sh
while true; do
  echo Are you ready to move on\?
  read answer
  if [ "$answer" = Y -o "$answer" = y ]
  then
    break
  else
    echo "Hello world."
  fi
done
echo "Here we are"
