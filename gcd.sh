#!/bin/bash

if [ $# != 2 ]; then
  echo "Please enter two numbers" 1>&2
  exit 1
fi

function check_arg (){
  if [[ ! "$1" =~ ^[0-9]+$ ]]; then
    echo "Please enter a numbers" 1>&2
    exit 1
  fi

  if [ "$1" -eq "0" ]; then
    echo "Please enter a value greater than 0" 1>&2
    exit 1
  fi
}

# https://rikeilabo.com/euclids-parity-method
function gcd (){
  local a=$1
  local b=$2
  local r

  while [ $b -ne 0 ];
  do
    r=$(( a % b ))
    a=$b
    b=$r
  done

  echo $a
}

check_arg $1
check_arg $2

result=$(gcd $1 $2)

echo $result
