#!/bin/bash
# Scriptname: do_increment
increment() {
  local -i sum
  ((sum=$1+1))
  return $sum
}

echo -n "The sum is "
increment 5
echo $?
echo $sum
