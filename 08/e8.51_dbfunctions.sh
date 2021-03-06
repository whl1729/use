#!/bin/sh
addon() {
  while true
  do
    echo "Adding information "
    echo "Type the full name of employee "
    read name
    echo "Type address for employee "
    read address
    echo "Type start date for employee (4/10/88): "
    read startdate
    echo $name:$address:$startdate
    echo -n "Is this correct? "
    read ans
    case "$ans" in
      [Yy]*)
        echo "Adding info..."
        echo $name:$address:$startdate >> /tmp/datafile
        sort -n /tmp/datafile -o /tmp/datafile
        echo -n "Do you want to go back to the main menu? "
        read ans
        if [ $ans = Y -o $ans = y ]
        then
          return      # Return to calling program
        else
          continue    # Go to the top of the loop
        fi
        ;;
      *)
        echo "Do you want to try again? "
        read answer
        case "$answer" in
          [Yy]*)
            continue
            ;;
          *)
            exit
            ;;
        esac
        ;;
    esac
  done
}    # End of function definition
