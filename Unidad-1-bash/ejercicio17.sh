#!/bin/bash

clear

suma=1

read -p "Introduce un numero distinto a 0: " suma1
if [[ $suma1 -ne 0 ]]; then
while [[ $suma -ne 0 ]]; do
if [[ $suma -ne 0 ]]; do
  read -p "Introduce un numero a sumar al resultado: " suma
  suma=$(( suma + suma1 ))
  echo "$suma"
done
else
  echo "Saliendo"
fi
