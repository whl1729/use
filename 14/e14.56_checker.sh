#!/bin/bash
# Scriptname: checker
# Purpose: Demonstrate function and arguments
function Usage { echo "error: $*" 2>&1; exit 1; }

if (( $# != 2  )); then
  Usage "$0: requires two arguments"
fi

if [[ ! (-r $1 && -w $1) ]]; then
  Usage "$0: not readable and writable"
fi

echo The arguments are $*
