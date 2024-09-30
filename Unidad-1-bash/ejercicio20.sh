#!/bin/bash
#Crea un script primo.sh que verifique si el número pasado por parámetro es primo o no.

clear

#Comprobacion de parametros

if [[ $# -ne 1 ]]; then
  echo "Numero de parametros incorrecto. Introduce un parametro"
  exit  1
elif [[ $1 -le 0 ]]; then
  echo "Numero negativo. Introduce numeros positivos"
  exit  1
fi

#Bucle comprobar numero primo a traves del resto

for ((i=1; i<=$1; i++)); do
  calculo=$(( $1 % i ))
  echo "$calculo" | grep ^0 >> texto.txt
done

#Cuento las lineas. Si tiene 2 lineas sera un numero primo ya que solamente se puede dividir por el mismo y por 1

resultado=$(cat texto.txt | wc -l)

if [[ $resultado -eq 2 ]]; then
  echo "Es un numero primo"
else
  echo "No es un numero primo"
fi

rm texto.txt
