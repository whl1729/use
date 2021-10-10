#!/bin/bash
# Test if/else usage.
if (( $# != 1 )); then
  echo "Usage: $0 username" 1>&2
  exit 1
fi

readonly name="$1"
if grep "$name" /etc/passwd >& /dev/null; then
  echo Found $name!
else
  echo "Can't find $name."
  exit 1
fi
