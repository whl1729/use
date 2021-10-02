#!/bin/sh
# Scriptname: runit
# IFS is the internal field separator and defaults to spaces, tabs, and newlines.
# In this script it is changed to a colon.
names=Tom:Dick:Harry:John
OLDIFS="$IFS"
IFS=":"
for persons in $names
do
  echo Hi $persons
done
IFS="$OLDIFS"
set Jill Jane Jolene
for girl in $*
do
  echo Howdy $girl
done
