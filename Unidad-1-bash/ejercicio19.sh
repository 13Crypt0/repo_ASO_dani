#!/bin/bash

clear

for (( i=1; i<=5; i++ )); do
  for (( c=1; c<=i; c++ )); do
    echo -n "$i"
  done
echo ""
done
