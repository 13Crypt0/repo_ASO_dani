#!/bin/bash
#Realizar un script utilizando el bucle for que muestre el siguiente patrón

clear

for (( i=1; i<=5; i++ )); do
  for (( c=1; c<=i; c++ )); do
    echo -n "$c"
  done
  echo ""
done
