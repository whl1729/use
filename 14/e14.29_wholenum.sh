#!/bin/bash
# Scriptname: wholenum
# Purpose: The expr command tests that the user enters an integer

echo "Enter an integer."
read number
if expr "$number" + 0 >& /dev/null; then
  :
else
  echo "You did not enter an integer value."
  exit 1
fi
