#!/bin/bash
#Crea un shell script que sume los números del 1 al 1000 mediante una estructura for

clear

suma=0

# Con bucle for

for (( i=0; i<=1000; i++ )); do
  suma=$(( suma + i ))
done

echo "El resultado de la suma es: $suma"


