#!/bin/sh
# Rename file and show the result.

if [ $# -ne 2 ]; then
  echo "Usage: rename oldfilename newfilename"
  exit 1
fi

mv "$1" "$2"
echo "$1 has been renamed $2"
echo "Here is a listing of the directory:"
ls
