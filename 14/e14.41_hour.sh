#!/bin/bash
# Scriptname: hour
hour=0
until (( hour > 24 )); do
  case "${hour}" in
    [0-9]|1[0-1])
      echo "Good morning!"
      ;;
    12)
      echo "Lunch time."
      ;;
    1[3-7])
      echo "Siesta time."
      ;;
    *)
      echo "Good night."
      ;;
  esac
  (( hour+=1 ))
done
