#!/bin/bash

clear

directorio=$1

if [[ $# -ne 1 ]]; then
  echo "Introduce un solo parametro con la ruta absoluta del directorio"
  exit 1
elif [[ ! -d $directorio ]]; then
  echo "El directorio no existe"
  exit 1
fi

echo "Contador de archivos y directorios de $1"

contadorficheros=0
contadorsubdirectorios=0

for contenido in "$directorio"/*; do
  if [[ -f $contenido ]]; then
    ((contadorficheros++))
  elif [[ -d $contenido ]]; then
    ((contadorsubdirectorios++))
  fi
done

echo "Numero de archivos: $contadorficheros"
echo ""
echo "Numero de subdirectorios: $contadorsubdirectorios"