#!/bin/sh
# Name: wholenum
# Purpose: The expr command tests that the user enters an integer
echo "Enter a number."
read number
if expr "$number" + 0 > /dev/null 2>&1
then
  :
else
  echo "You did not enter an integer value." 1782
  exit 1
fi
