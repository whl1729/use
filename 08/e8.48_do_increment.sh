#!/bin/sh
# Scriptname: do_increment
increment() {
  sum=`expr $1 + 1`
  return $sum    # Return the value of sum to the script
}

echo -n "The sum is "
increment 5    # Call function increment; pass 5 as a parameter.
               # 5 becomes $1 for the increment function.
echo $?        # The return value is stored in $?
echo $sum      # The variable "sum" is known to the function,
               # and is also known to the main script.
