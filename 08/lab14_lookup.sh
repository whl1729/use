#!/bin/sh
# Script name: lookup
# Author name: Wu Hualong
# Dislay the datafile in sorted Order.
echo "The contents of datafile: "
cat /tmp/datafile | sort -k 2

echo
echo -n "The number of entries in the datafile: "
cat /tmp/datafile | wc -l

echo "Do you want to add an entry to datafile? [y/n]"
read answer

if [ "$answer" = 'y' -o "$answer" = 'yes' ]; then
  echo "Please enter the name, phone, address, birth date and salary (separated by blank):"
  read first_name last_name phone address birthday salary
  echo "$first_name $last_name:$phone:$address:$birthday:$salary" >> /tmp/datafile
  cat /tmp/datafile | sort -k 2 > /tmp/sorted_datafile
  mv /tmp/sorted_datafile /tmp/datafile
  line_num=`awk -v name=$first_name '$0 ~ name {print NR}' /tmp/datafile`
  echo "The new entry has been added to the $line_num lines of the /tmp/datafile."
fi
