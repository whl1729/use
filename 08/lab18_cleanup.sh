#!/bin/sh
# Script name: cleanup
# Author: Wu Hualong
# Remove all temporary files when receive interrupt or hangup signal.

cleanup() {
  echo "clean up all temporary files..."
}

sleeping() {
  while true;
  do
    echo "sleeping..."
    sleep 1
  done
}

trap 'cleanup; exit 0' 1 2
sleeping
