#!/bin/bash

clear

numero0=0

read -p "Introduce un numero: " numero

calculo=$(( numero % 2 ))

if [[ $calculo -eq 0 ]]; then
  echo "Su numero ($numero) es par"
else
  echo "Su numero ($numero) es impar"
fi

