#!/bin/bash

clear

#Comprobacion numero de paramentros introducidos

if [[ $# -ne 2 ]]; then
  echo "Numero de parametros incorrecto"
  echo "Introduce dos parametros"
  exit 1
elif [[ ! -f $1 ]]; then
  echo "El archivo del 1º parametro no existe o no es un archivo ordinario"
  exit 1
elif [[ -e $2 ]]; then
  echo "El nombre del 2º parametro ya existe"
  exit 1
fi

cp $1 $2
echo "Se ha realizado la copia correctamente"
exit 0
