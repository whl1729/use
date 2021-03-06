# Name: bigfiles
# Purpose: Use the find command to find any files in the root
# partition that have not been modified within the past n
# (any number within 30 days) days and are larger than 20 blocks
# (512-byte blocks)

if [ $# -ne 2  ]
then
  echo "Usage: $0 mdays size " 1>&2
  exit 1
fi

if [ $1 -lt 0 -o $1 -gt 30 ]
then
  echo "mdays is out of range"
  exit 2
fi

if [ $2 -le 20 ]
then
  echo "size is out of range"
  exit 3
fi

find / -xdev -mtime $1 -size +$2 -print
