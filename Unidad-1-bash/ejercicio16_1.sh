#!/bin/bash

clear

suma=0

# Con for

for (( i=0; i<=1000; i++ )); do
  suma=$(( suma + i ))
done

echo "El resultado de la suma es: $suma"


