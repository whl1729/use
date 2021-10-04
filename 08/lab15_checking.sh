#!/bin/sh
# Script name: checking
# Author: Wu Hualong
# Check whether the user is in the /etc/passwd file and whether he is logged on.

if [ $# -ne 1 ]; then
  echo "Usage: $0 loginname"
  exit 1
fi

if grep "$1" /etc/passwd > /tmp/result; then
  echo "Found $1 in the /etc/passwd file."
else
  echo "No such user on our system."
fi

if who | grep -q "$1"; then
  echo "$1 is logged on and running the following process: "
  ps -elf | awk -v name=$1 '$3 == name'
else
  echo "$1 is not logged on."
fi
