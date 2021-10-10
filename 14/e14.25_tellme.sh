#!/bin/bash
# Script name: tellme
# Using the new-style test command
echo -n "How old are you? "
read age

if (( age < 0 || age > 120 )); then
  echo "Welcome to our planet!"
  exit 1
fi

if (( age >= 0 && age <= 12 )); then
  echo "A child is a garden of verse."
elif (( age > 12 && age <= 19 )); then
  echo "Rebel without a cause."
elif (( age > 19 && age <= 29 )); then
  echo "You got the world by the tail!!"
elif (( age > 29 && age <= 39 )); then
  echo "Thirty something..."
else
  echo "Sorry I asked."
fi
