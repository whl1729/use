#!/bin/sh
# Find the big files.

if [ $# -ne 2 ]; then
  echo "Usage: $0 mtime size" 1>&2
  exit 1
fi

find . -xdev -mtime -$1 -size +$2 -print 2>/dev/null
