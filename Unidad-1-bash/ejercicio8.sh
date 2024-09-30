#!/bin/bash
#Crea un script donde se pida al usuario dos números y diga cúal es mayor

clear

numero0=0
numero1=0

read -p "Introduce un 1º numero: " numero0
read -p "Introduce un 2º numero: " numero1

#Comparacion numeros
if [[ numero0 -eq numero1 ]]; then
  echo "Ambos numeros son iguales"
elif [[ numero0 -gt numero1 ]]; then
  echo "El $numero0 es mayor que el $numero1"
else
  echo "El $numero1 es mayor que el $numero0"
fi
