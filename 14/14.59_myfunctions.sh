#!/bin/bash
function go() {
  cd ${HOME}/src
  PS1='`pwd` > '
  ls
}

function greetings() { echo "Hi $1! Welcome to my world."; }
