#!/bin/bash
# Scriptname: runit
PS3="Select a program to execute: "
select program in 'ls -F' pwd date; do
  $program
done
