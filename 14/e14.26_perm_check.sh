#!/bin/bash
# Using the new compound operator for test [[ ]]
# filename: perm_check

if (( $# != 1 )); then
  echo "Usage: $0 path" 1>&2
  exit 1
fi

readonly file="$1"

if [[ -d $file ]]; then
  echo "$file is a directory."
elif [[ -f $file ]]; then
  if [[ -r $file && -w $file && -x $file ]]; then
    echo "You have read, write, and execute permission on $file."
  fi
else
  echo "$file is neither a file nor a directory."
fi
