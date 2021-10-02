#!/bin/sh
name=Tome
if grep "$name" /etc/passwd > /dev/null 2>&1
then
  :
else
  echo "$1 not found in databasefile"
  exit 1
fi
