#!/bin/sh
# This program demonstrates the scope of variables when
# assigned within loops where the looping command uses
# redirection. A subshell is started when the loop uses
# redirection, making all variables created within the loop
# local to the shell where the loop is being executed.
while read line
do
  echo $line
  name=JOE
done < /tmp/testing > /tmp/outfile
echo Hi there $name
