#!/bin/bash
# This is the first Bash shell program of the day.
# Scriptname: greetings
# Written by: along
echo "Hello $LOGNAME, it's nice talking to you."
echo "Your present working directory is `pwd`."
echo "You are working on a machine called `uname -n`"
echo "Here is a list of your files."
ls    # List files in the present working directory
echo "Bye for now $LOGNAME. The time is `date +%T`!"
