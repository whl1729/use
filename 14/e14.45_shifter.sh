#!/bin/bash
# Scriptname: shifter
set joe mary tom sam
shift
echo $*
set $(date)
echo $*
shift 5
echo $*
shift 2
