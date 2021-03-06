#!/bin/sh
file=./testing

if [ -d $file ]
then
  echo "$file is a directory"
elif [ -f $file ]
then
  if [ -r $file -a -w $file -a -x $file ]
  then    # nested if command
    echo "You have read, write, and execute permission on $file."
  fi
else
  echo "$file is neither a file nor a directory."
fi
