#!/bin/bash
# Scriptname: backup
# Purpose: Create backup files and store them in a backup directory.
dir=/tmp
for file in /tmp/memo[1-5]; do
  if [ -f $file ]; then
    cp $file $dir/$file.bak
    echo "$file is backed up in $dir"
  fi
done