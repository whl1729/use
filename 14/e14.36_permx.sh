#!/bin/bash
# Scriptname: permx
for file; do
  if [[ -f ${file} && ! -x ${file} ]]; then
    chmod +x ${file}
    echo ${file} now has execute permission
  fi
done
