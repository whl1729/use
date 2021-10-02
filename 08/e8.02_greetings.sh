#!/bin/sh
# Scriptname: greetings
# Written by: Barbara Born
# This is the first Bourne shell program of the day.
echo "Hello $LOGNAME, it's nice talking to you."
echo "Your present working directory is `pwd`."
echo "You are working on a machine called `uname -n`."
echo "Here is a list of your files."
ls # List files in the present working directory
echo "Bye for now $LOGNAME. The time is `date +%T`!"
