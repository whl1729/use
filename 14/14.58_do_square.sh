#!/bin/bash
# Scriptname: do_square
function square {
  local sq
  ((sq=$1 * $1))
  echo "Number to be squared is $1."
  echo "The result is $sq"
}
echo "Give me a number to square."
read number
value_returned=$(square $number)
echo "$value_returned"
