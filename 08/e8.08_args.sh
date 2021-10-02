#!/bin/sh
# Scriptname: args
# Script to test command-line arguments

echo The name of this script is $0.
echo The arguments are $*.
echo The first argument is $1.
echo The second argument is $2.
echo The number of arguments is $#.
oldargs=$*    # Save parameters passed in from the command line
set Jake Nicky Scott    # Reset the positional parameters
echo All the positional parameters are $*.
echo The number of positional parameters is $#.
echo "Goodbye for now, $1"
set `date`   # Reset the positional parameters
echo The date is $2 $3, $6.
echo "The value of \$oldargs is $oldargs."
set $oldargs
echo $1 $2 $3
