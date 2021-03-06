#!/bin/bash
# Scriptname: ttype
# Purpose: set the terminal type
# Author: Andy Admin

COLUMNS=60
LINES=1
PS3="Please enter the terminal type: "
select choice in wyse50 vt200 xterm sun; do
  case "${REPLY}" in
    1)
      export TERM=${choice}
      echo "TERM=${choice}"
      break
      ;;
    2 | 3)
      export TERM=${choice}
      echo "TERM=${choice}"
      break
      ;;
    4)
      export TERM=${choice}
      echo "TERM=${choice}"
      break
      ;;
    *)
      echo -e "${REPLY} is not a valid choice. Try again\n" 1>&2
      REPLY=    # Causes the menu to be redisplayed
      ;;
  esac
done
