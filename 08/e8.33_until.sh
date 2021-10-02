#!/bin/sh
until who | grep linda
do
  echo Wait for Linda...
  sleep 5
done
talk linda@dragonwings
