#!/bin/sh
# Scriptname: mailer
for person in `cat /tmp/mylist`
do
  mail $person < /tmp/letter
  echo "$person was sent a letter."
done
echo "The letter has been sent."
