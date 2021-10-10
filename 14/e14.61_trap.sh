#!/bin/bash
# Show the basic usage of trap.
trap 'echo receive interrupt.' 0 1 2 15
while :; do echo hello world; sleep 2; done
