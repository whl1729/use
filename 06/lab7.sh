#!/bin/bash

function average_contribution() {
  month=$1
  awk -F: -v i=$((month+2)) '{count++; sum+=$i}END{print sum/count}' /tmp/lab7.data
}

if [ $# != 1 ]; then
  echo "usage: $0 1/2/3"
  exit 1
fi

average_contribution $1
