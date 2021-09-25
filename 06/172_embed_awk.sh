#!/bin/ksh
# This shell script will collect data from awk to use in
# generating form letter(s). See above.
print "Hello $LOGNAME. "
print "This report is for the month and year:"
cal | awk 'NR==1{print $0}'

if [[ -f /tmp/data.form ||  -f /tmp/formletter? ]]
then
  rm /tmp/data.form /tmp/formletter? 2> /dev/null
fi

integer num=1
while true
do
  print "Form letter #$num:"
  read project?"What is the name of the project? "
  read sender?"Who is the status report from? "
  read recipient?"Who is the status report to? "
  read due_date?"What is the completion date scheduled? "
  echo $project:$recipient:$sender:$due_date > /tmp/data.form
  read answer?"Do you wish to generate another form letter? "
  if [[ "$answer" != [Yy]* ]]
  then
    break
  else
    awk -f 171_form_letters.awk /tmp/data.form > /tmp/formletter$num
  fi
  ((num+=1))
done
awk -f 171_form_letters.awk /tmp/data.form > /tmp/formletter$num
