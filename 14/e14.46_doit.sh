#!/bin/bash
# Name: doit
# Purpose: shift through command-line arguments
# Usage: doit [args]
while (( $# > 0 )); do
  echo $*
  shift
done
