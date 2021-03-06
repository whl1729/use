#!/bin/bash
# Scriptname: runit2
# IFS is the internal field separator and defaults to
# spaces, tabs, and newlines.
# In this script it is changed to a colon.
names=Tom:Dick:Harry:John
oldifs="$IFS"    # Save the original value of IFS

IFS=":"

for persons in ${names}; do
  echo Hi ${persons}
done

IFS="${oldifs}"    # Reset the IFS to old value

set Jill Jane Jolene    # Set positional parameters
for girl in $*
do
  echo Howdy ${girl}
done

