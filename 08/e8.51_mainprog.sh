#!/bin/sh
# Scriptname: mainprog
# This is the main script that will call the function, addon
datafile=/tmp/datafile
. ./e8.51_dbfunctions.sh
if [ ! -f $datafle ]
then
  echo "`basename $datafile` does not exist" 1>&2
  exit 1
fi

echo "Select one: "
cat <<EOF
  [1] Add info
  [2] Delete info
  [3] Exit
EOF

read choice
case "$choice" in
  1) addon    # Calling the addon function
    ;;
  2) delete   # Calling the delete function
    ;;
  3) update
    ;;
  4)
    echo Bye
    exit 0
    ;;
  *)
    echo Bad choice
    exit 2
    ;;
esac

echo Returned from function call
echo The name is $name
# Variables set in the function are known in this shell.
