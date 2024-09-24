#!/bin/bash

clear

if [[ $# -ne 1 ]]; then
  echo "Numero de parametros incorrecto. Introduce un parametro"
  exit  1
elif [[ $1 -le 0 ]]; then
  echo "Numero negativo. Introduce numeros positivos"
  exit  1
fi

for ((i=1; i<=$1; i++)); do
  calculo=$(( $1 % i ))
  echo "$calculo" | grep ^0 >> texto.txt
done

resultado=$(cat texto.txt | wc -l)

if [[ $resultado -eq 2 ]]; then
  echo "Es un numero primo"
else
  echo "No es un numero primo"
fi

rm texto.txt
