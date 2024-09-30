#!/bin/bash
#Realizar un script que reciba como único parámetro el nombre de un directorio, especificado mediante su nombre de ruta completo. El programa debe mostrar un listado no recursivo de todas las entradas contenidas en ese directorio, indicando para cada una de ellas si se trata de un fichero o de un directorio. Al final, debe mostrarse un mensaje indicando el número total de entradas procesadas.

clear

directorio=$1

#Comprobacion si es un directorio y numero de parametros introducidos

if [[ $# -ne 1 ]]; then
  echo "Introduce un solo parametro con la ruta absoluta del directorio"
  exit 1
elif [[ ! -d $directorio ]]; then
  echo "El directorio no existe"
  exit 1
fi

contador=0

#Bucle para determinar tipo de fichero/directorio

for contenido in "$directorio"/*; do
  if [[ -d "$contenido" ]]; then
    echo "$contenido --> directorio"
  elif [[ -f "$contenido" ]]; then
    echo "$contenido --> fichero"
  else
    echo "$contenido --> otros"
  fi
  ((contador++))
done

echo ""
echo "Número total de entradas procesadas: $contador"

