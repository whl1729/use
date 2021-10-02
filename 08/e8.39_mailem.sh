#!/bin/sh
# Scriptname: mailem
# Purpose: To send a list
for name in `cat /tmp/mail_list`
do
  if [ "$name" = "richard" ]; then
    continue
  else
    mail $name < /tmp/memo
  fi
done
