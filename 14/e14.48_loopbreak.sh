#!/bin/bash
# Scriptname: loopbreak
while true; do
  echo Are you ready to move on\?
  read answer
  if [[ "$answer" == [Yy] ]]; then
    break
  else
    echo Hello world
  fi
done
printf "Here we are\n"
