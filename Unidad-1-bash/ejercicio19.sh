#!/bin/bash
#Realizar un script utilizando la estructura el bucle for que muestre el siguiente patrón

clear

for (( i=1; i<=5; i++ )); do
  for (( c=1; c<=i; c++ )); do
    echo -n "$i"
  done
echo ""
done
