#!/bin/bash
# Scriptname: nosy
echo -e "Are you happy? \c"
read answer
echo "$answer is the right response."
echo -e "What is your full name? \c"
read first middle last
echo "Hello $first"
echo -n "Where do you work? "
read
echo I guess $REPLY keeps you busy!

read -p "Enter your job title: "
echo "I thought you might be an $REPLY."
echo -n "Who are your best friends? "
read -a friends
echo "Say hi to ${friends[0]}."
