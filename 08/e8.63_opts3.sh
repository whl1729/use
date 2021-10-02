#!/bin/sh
# Program opts3
# Using getopts -- Third try --
while getopts dq: options
do
  case $options in
    d)
      echo "-d is a valid switch"
      ;;
    q)
      echo "The argument for -q is $OPTARG"
      ;;
    \?)
      echo "Usage:$0 -dq filename ... " 1>&2
      ;;
  esac
done
