#!/bin/sh
# Script name: systype
# Author: Wu Hualong

get_system_name() {
  echo `uname -s`
}

system=`get_system_name`
if [ "$system" = "Linux" ]; then
  ps -elf
else
  ps -aux
fi
