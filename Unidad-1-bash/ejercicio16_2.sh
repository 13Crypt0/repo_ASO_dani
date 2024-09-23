#!/bin/bash

clear

suma=0
i=0

#Con while
while [[ "$i" -ne 1000 ]]; do
  ((i++))
  suma=$(( i + suma ))
done

echo "El resultado de la suma es: $suma"
