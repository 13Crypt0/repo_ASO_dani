#!/bin/bash
#Realizar un shell script que copie el fichero indicado como primer parámetro posicional de manera que la copia tenga el nombre indicado en el segundo parámetro posicional. Hay que controlar: a) Que se indiquen dos parámetros. b) Que exista y sea archivo ordinario el primer parámetro. c) Que no exista un identificador (fichero ordinario, directorio, etc..) con el mismo nombre que el indicado en el segundo parámetro. Si se produce alguna de las situaciones anteriores se visualizará un mensaje de error indicativo.

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

#Realizacion de la copia luego de dichas comprobaciones

cp $1 $2
echo "Se ha realizado la copia correctamente"
exit 0
