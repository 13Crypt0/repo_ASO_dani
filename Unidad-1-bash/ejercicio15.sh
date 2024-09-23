#!/bin/bash

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
