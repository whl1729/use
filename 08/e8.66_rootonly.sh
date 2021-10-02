#!/bin/sh
# From SVR4 shutdown Program
eval `id | sed 's/[^a-z0-9=].*//'`
if [ "${uid:=0}" -ne 0 ]
then
  echo $0: Only root can run $0
  exit 2
fi
