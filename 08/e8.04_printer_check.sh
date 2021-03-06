#!/bin/sh
# Scriptname: printer_check
# Script to clear a hung up printer for SVR4
if [ $LOGNAME != root ]
then
  echo "Must have root privileges to run this program"
  exit 1
fi

cat << EOF
Warning: All jobs in the printer queue will be removed.
Please turn off the printer now. Press Enter when you
are ready to continue. Otherwise press Ctrl-C.
EOF


read ANYTHING    # Wait until the user turns off the printer
echo
/etc/init.d/lp stop    # Stop the printer
rm -f /var/spool/lp/SCHEDLOCK /var/spool/lp/temp*
echo
echo "Please turn the printer on now."
echo "Please Enter to continue"
read ANYTHING
echo
/etc/init.d/lp start
