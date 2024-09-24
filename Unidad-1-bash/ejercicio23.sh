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

contador=0

for contenido in "$directorio"/*; do
  if [[ -d "$contenido" ]]; then
    echo "$contenido --> directorio"
  elif [[ -f "$contenido" ]]; then
    echo "$contenido --> fichero"
  else
    echo "$contenido --> otros"
  fi
contador=$((contador + 1))
done

echo ""
echo "Número total de entradas procesadas: $contador"
