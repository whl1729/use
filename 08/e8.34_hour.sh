#!/bin/sh
# Scriptname: hour
hour=1
until [ $hour -gt 24 ]
do
  case "$hour" in
    [0-9] | 1[0-1])
      echo "Good Morning!"
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
  hour=`expr $hour + 1`
done
