#!/bin/sh
# Scriptname: quiz
echo "Who was the chief defense lawyer in the OJ case?"
read answer
while [ "$answer" != "Johnny" ]
do
  echo "Wrong try again!"
  read answer
done
echo You got it!
