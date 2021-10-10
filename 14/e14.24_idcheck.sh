#!/bin/bash
# Scriptname: idcheck
# Purpose: Check user id to see if user is root.
# Only root has a uid of 0.
# Format for id output: uid=9496(ellie) gid=40 groups=40
# root's uid=0
id=`id | awk -F'[=(]' '{print $2}'`
echo your user id is: $id
if (( id == 0 )); then
  echo "You are superuser."
else
  echo "You are not superuser."
fi
