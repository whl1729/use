#!/bin/sh
# Script name: greetme
# Author: along
# Show the basic usage of shell script
echo "Hello, my friend!"
date
cal
hostname
uname -a
ls
ps -elf | awk '$3 == "root"'
echo "TERM=${TERM}, PATH=${PATH}, HOME=${HOME}"
du
id
echo "Please, could you loan me \$50.00?"
echo "Good-bye. Now it's `date +%H`"
