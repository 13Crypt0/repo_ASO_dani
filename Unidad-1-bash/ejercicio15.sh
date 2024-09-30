#!/bin/bash
#Realiza un script que, dado un número n pasado por parámetro, muestre su tabla de multiplicar con el formato de salida siguiente: i x n = resultado.

clear

if [[ "$#" -eq 1 ]]; then
  echo "Tablas de multiplicar del $1"
  for (( i=0; i<=10; i++ )); do
    multiplicacion=$(( $i * $1 ))
    echo "$i x $1 = $multiplicacion"
  done
  else
    echo "Numero de parametros incorrecto"
fi
