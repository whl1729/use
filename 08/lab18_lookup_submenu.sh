#!/bin/sh
# Script name: lookup_submenu
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
[3] Change entry.
[4] View entry.
[5] Exit.

Enter you choice [1-5]:
EOF
}

run() {
  while true; do
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
        change_entry
        ;;
      4)
        view_entry
        ;;
      5)
        exit 0
        ;;
      *)
        echo "Invalid entry, try again."
    esac
  done
}

add_entry() {
  echo "Please enter the name, phone, address, birth date and salary (separated by blank):"
  read first_name last_name phone address birthday salary
  name="$first_name $last_name"
  if grep -q "$name" $datafile; then
    echo "The name \"$name\" has existed!"
    return 1
  fi

  echo "$name:$phone:$address:$birthday:$salary" >> $datafile
  cat $datafile | sort -k 2 > $datafile.sorted
  mv $datafile.sorted $datafile
  line_num=`awk -F: -v name=$name '$0 ~ name {print NR}' $datafile`
  echo "The new entry has been added to the $line_num lines of the $datafile."
}

delete_entry() {
  echo "Please enter the name of the entry you want to delete: "
  read name
  if grep -q "$name" $datafile; then
    sed -i "/$name/d" $datafile
    echo "The entry whose name is \"$name\" has been deleted."
  else
    echo "Not found any entry whose name is \"$name\"!"
    return 2
  fi
}

change_entry() {
  echo "Please enter the name of the entry you want to change:"
  read name
  if grep -q "$name" $datafile; then
    echo "Please enter the new name, phone, address, birth date and salary (separated by blank):"
    read first_name last_name phone address birthday salary
    new_name="$first_name $last_name"
    sed -i "s/$name.*/$new_name:$phone:$address:$birthday:$salary/" $datafile
    echo "The entry whose name is \"$name\" has been changed."
  else
    echo "Not found any entry whose name is \"$name\"!"
    return 1
  fi
}

show_submenu() {
cat <<EOF

-----------SUBMENU-----------
a) Phone
b) Address
c) Birthday
d) Salary
e) I don't want to view any specific information

Enter you choice [a-e]:

EOF
}

view_specific_info() {
  show_submenu
  read choice
  case $choice in
    a)
      echo -n "$1's phone number is: "
      awk -F: -v name="$1" '$1 ~ name {print $2}' $datafile
      ;;
    b)
      echo -n "$1's address is: "
      awk -F: -v name="$1" '$1 ~ name {print $3}' $datafile
      ;;
    c)
      echo -n "$1's birthday is: "
      awk -F: -v name="$1" '$1 ~ name {print $4}' $datafile
      ;;
    d)
      echo -n "$1's salary is: "
      awk -F: -v name="$1" '$1 ~ name {print $5}' $datafile
      ;;
    e)
      return 0
      ;;
    *)
      echo "Invalid choice: $choice"
      ;;
  esac
}

view_entry() {
  echo "-----------ENTRIES-----------"
  cat $datafile | sort -k 2
  echo
  echo -n "Number of entries: "
  cat $datafile | wc -l
  echo "------------------------------------------------------"
  echo "Please enter the name of the entry you want to view:"
  read first_name last_name
  name="$first_name $last_name"
  if grep -q "$name" $datafile; then
    echo "Information for \"$name\": "
    awk -F: -v name="$name" '$1 ~ name' $datafile
    view_specific_info "$name"
  else
    echo "Not found any entry whose name is \"$name\""
    return 4
  fi
}

check_datafile
run
