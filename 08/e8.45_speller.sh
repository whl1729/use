#!/bin/sh
# Scriptname: speller
# Purponse: Check and fix spelling errors in a file
exec < /tmp/data
while read line
do
  echo $line
  echo -n "Is this word correct? [Y/N] "
  read answer < /dev/tty  # Read from the terminal
  case "$answer" in
    [Yy]*)
      continue
      ;;
    *)
      echo "what is the correct spelling? "
      read word < /dev/tty
      sed "s/$line/$word/g" /tmp/data > error
      mv error /tmp/data
      echo $line has been changed to $word.
  esac
done
