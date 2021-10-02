#!/bin/sh
# Scriptname: colors

echo -n "Which color do you like?"
read color
case "$color" in
  [Bb]l??)
    echo I feel $color
    echo The sky is $color
    ;;
  [Gg]ree*)
    echo $color is for trees
    echo $color is for seasick;;
  red | orange)
    echo $color is very warm!;;
  *)
    echo No such color as $color;;
esac
echo "Out of case"
