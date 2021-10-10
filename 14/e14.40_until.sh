#!/bin/bash
# Test the usage of until command
until who | grep linda; do
  sleep 2
done
talk linda@dragonwings
