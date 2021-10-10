#!/bin/bash
# Scriptname: printer_check
# Script to clear a hung-up printer
if [ $LOGNAME != root ]
then
  echo "Must have root privileges to run this program"
  exit 1
fi

cat << EOF
  Warning: All jobs in the printer queue will be removed.
  Please turn off the printer now. Press return when you
  are ready to continue. Otherwise press Control C.
EOF

read JUNK    # Wait until the user turns off the printer
echo
/etc/rc.d/init.d/lpd stop    # Stop the printer
echo -e "\nPlease turn the printer on now."
echo "Press Enter to continue"
read JUNK    # Stall until the user turns the printer back on
echo    # A blank line is printed
/etc/rc.d/init.d/lpd start    # Start the printer
