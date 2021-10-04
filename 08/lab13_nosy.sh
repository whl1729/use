#!/bin/sh
# Chat with the user.
echo -n "What's your name? "
read first_name last_name middle_name
echo "Hello, ${first_name}"

echo -n "What's your year of birth? "
read birth_year
this_year=`date +%Y`
echo "So you're `expr ${this_year} - ${birth_year}` years old."

echo -n "What's your login name? "
read login_name
user_id=`cat /etc/passwd | awk -F: -v name=${login_name} '$1 ==name {print $3}'`
home_dir=`cat /etc/passwd | awk -F: -v name=${login_name} '$1 ==name {print $6}'`
echo "your user id is ${user_id}"
echo "your home directory is ${home_dir}"

echo "These are all the processes you are running: "
ps -elf | awk -v name=${login_name} '$3 == name'

echo "The day of the week is `date +%A` and the current time is `date +%r`"
