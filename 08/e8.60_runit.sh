#!/bin/sh

while getopts xyn: name
do
  echo "x=$x, y=$y, n=$n, name=$name"
done
