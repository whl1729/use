#!/bin/sh
# Program opts4
# Using getopts -- Fourth try --
while getopts xyz: arguments 2>/dev/null
do
  case $arguments in
    x)
      echo "you entered -x as an options."
      ;;
    y)
      echo "you entered -y as an options."
      ;;
    z)
      echo "you entered -z as an options."
      ;;
    \?)
      echo "Usage: ipts4 [-xy] [-z argument]"
      exit 1
      ;;
  esac
done
echo "The initial value of \$OPTIND is 1.
  The final value of \$OPTIND is $OPTIND.
  Since this reflects the number of the next command-line argument,
  the number of arguments passed was `expr $OPTIND - 1`."
