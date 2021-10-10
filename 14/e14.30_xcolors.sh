#!/bin/bash
# Scriptname: xcolors

echo -n "Choose a foreground color for your xterm window: "
read color
case "$color" in
  [Bb]??)
    xterm -fg blue -fn terminal &
    ;;
  [Gg]ree*)
    xterm -fg darkgreen -fn terminal &
    ;;
  red | orange)
    xterm -fg "$color" -fn terminal &
    ;;
  *)
    xterm -fn terminal
    ;;
esac
echo "Out of case command"
