#!/bin/bash
# filename: name_grep

if (( $# != 1 )); then
  echo "Usage: $0: username"
  exit 1
fi

if grep "$1" /etc/passwd >& /dev/null
then
  :
else
  echo "$1 not found in /etc/passwd"
  exit 1
fi
