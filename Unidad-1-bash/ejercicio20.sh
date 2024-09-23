#!/bin/bash

clear

if [[ $# -ne 1 ]]; then
  echo "Numero de parametros incorrecto. Introduce un parametro"
  exit  1
elif [[ $1 -le 0 ]]; then
  echo "Numero negativo. Introduce numeros positivos"
  exit  1
fi
