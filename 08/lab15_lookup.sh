#!/bin/sh
# Script name: lookup
# Author name: Wu Hualong
# Dislay the datafile in sorted Order.
datafile=/tmp/datafile

check_datafile() {
  if [ ! -f $datafile ]; then
    echo "$datafile does not exist!"
    exit 1
  fi

  if [ -r $datafile ]; then
    echo "$datafile is readable."
  fi

  if [ -w $datafile ]; then
    echo "$datafile is writable."
  fi
}

show_menu() {
cat <<EOF
-----------MENU-----------
[1] Add entry.
[2] Delete entry.
[3] View entry.
[4] Exit.

Enter you choice [1-4]:
EOF
}

add_entry() {
  echo "Please enter the name, phone, address, birth date and salary (separated by blank):"
  read first_name last_name phone address birthday salary
  if grep -q "$first_name $last_name" $datafile; then
    echo "The name \"$first_name $last_name\" has existed!"
    return 1
  fi

  echo "$first_name $last_name:$phone:$address:$birthday:$salary" >> $datafile
  cat $datafile | sort -k 2 > $datafile.sorted
  mv $datafile.sorted $datafile
  line_num=`awk -v name=$first_name '$0 ~ name {print NR}' $datafile`
  echo "The new entry has been added to the $line_num lines of the $datafile."
}

delete_entry() {
  echo "Please enter the name of the entry you want to delete: "
  read first_name last_name
  if grep -q "$first_name $last_name" $datafile; then
    sed -i "/$first_name $last_name/d" $datafile
    echo "The entry whose name is \"$first_name $last_name\" has been deleted."
  else
    echo "Not found any entry whose name is \"$first_name $last_name\"!"
    return 2
  fi
}


view_entry() {
  echo "The entries of datafile: "
  cat $datafile | sort -k 2
  echo
  echo -n "The number of entries in the datafile: "
  cat $datafile | wc -l
}

check_datafile
show_menu

read choice
case $choice in
  1)
    add_entry
    ;;
  2)
    delete_entry
    ;;
  3)
    view_entry
    ;;
  4)
    exit 0
    ;;
  *)
    echo "Invalid choice: $choice."
    exit 3
esac
