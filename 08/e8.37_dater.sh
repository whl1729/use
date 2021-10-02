#!/bin/sh
# Scriptname: dater
# Purpose: set positional parameters with the set command
# and shift through the parameters.
set `date`
while [ $# -gt 0 ]
do
  echo $1
  shift
done
