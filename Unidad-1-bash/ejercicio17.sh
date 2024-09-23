#!/bin/bash

clear

suma=1

read -p "Introduce un numero distinto a 0: " suma1

while [[ $suma -ne 0 ]]; do
  read -p "Introduce un numero a sumar al resultado: " suma
  suma1=$(( suma + suma1 ))
  echo "$suma1"
done

echo ""
echo "El resultado final de la suma es: $suma1"
echo "Saliendo..."
sleep 0,3
