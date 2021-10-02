#!/bin/sh
for person in bob jim joe sam
do
  mail $person < /tmp/memo
  sleep 1
done &
