#!/bin/bash

clear

for (( i=1; i<=5; i++ )); do
  for (( c=1; c<=i; i+1 )); do
    echo -n "$c"
done
echo ""
done
