#!/bin/bash
gcd() {
  re='^[0-9]+$'

  if ! [[ $1 =~ $re ]] || ! [[ $2 =~ $re ]]; then
    echo "error"

  elif [[ $1 -lt 0 || $2 -lt 0 ]]; then
    echo "error"

  elif [[ -z $n || -z $m ]]; then
    echo "bye"

  elif [[ $1 -eq $2 ]]; then
    echo "GCD is $1"

  elif [[ $1 -gt $2 ]]; then
    let "c = $1 - $2"
    gcd $c $2

  elif [[ $1 -lt $2 ]]; then
    let "c = $2 - $1"
    gcd $m $c

  fi
}

echo "enter m"
read m
echo "enter n"
read n

gcd $m $n
