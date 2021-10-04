#!/bin/sh
# Script name: lookup
# Author name: Wu Hualong
# Dislay the datafile in sorted Order.
echo "The contents of datafile: "
cat /tmp/datafile | sort -k 2
echo -n "The number of entries in the datafile: "
cat /tmp/datafile | wc -l
