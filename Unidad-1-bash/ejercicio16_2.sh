#!/bin/bash
#Crea un shell script que sume los números del 1 al 1000 mediante una estructura while

clear

suma=0
i=0

#Con while

while [[ "$i" -ne 1000 ]]; do
  ((i++))
  suma=$(( i + suma ))
done

echo "El resultado de la suma es: $suma"
