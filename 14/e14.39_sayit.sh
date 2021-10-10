#!/bin/bash
# Scriptname: sayit
echo Type q to quit.
go=start
while [[ -n "$go" ]]; do
  echo -n I love you.
  read word
  if [[ $word == [Qq] ]]; then
    echo "I'll always love you!"
    go=
  fi
done

