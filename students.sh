#!/bin/bash

read count

# как вариант ок да

#case $count in
#  0)
#    echo "No students"
#    ;;
#  1)
#    echo "$count student"
#    ;;
#  2)
#    echo "$count students"
#    ;;
#  3)
#    echo "$count students"
#    ;;
#  4)
#    echo "$count students"
#    ;;
#  *)
#    echo "A lot of students"
#    ;;
#esac

if [[ $count -eq 0 ]]; then
  echo "No students"

elif [[ $count -eq 1 ]]; then
  echo "$count student"

elif [[ $count -gt 1 && $count -lt 5 ]]; then
  echo "$count students"

else
  echo "A lot of students"
fi
