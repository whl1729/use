#!/bin/sh
# Name: doit
# Purpose: shift through command-line arguments
# Usage: doit [args]
while [ $# -gt 0 ]
do
  echo $*
  shift
done
