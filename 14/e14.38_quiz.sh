#!/bin/bash
# Scriptname: quiz
echo "Who was the 2nd U.S. president to be impeached?"
read answer
while [[ "$answer" != "Bill Clinton" ]]; do
  echo "Wrong try again!"
  read answer
done
echo You got it!
