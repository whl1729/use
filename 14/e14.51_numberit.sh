#!/bin/bash
# Program name: numberit
# Put line numbers on all lines of memo
if (( $# < 1 )); then
  echo "Usage: $0 filename " >&2
  exit 1
fi
count=1
cat $1 | while read line
do
# Input is coming from file provided at command line
  ((count == 1)) && echo "Processing file $1..." > /dev/tty
  echo -e "$count\t$line"
  let count+=1
done > /tmp/log.$$
mv /tmp/log.$$ $1
