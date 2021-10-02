# This file contains two functions
go() {
  cd $HOME/Downloads
  PS1='`pwd` > '
  ls
}
greetings() { echo "Hi $1! Welcome to my world."; }
