#!/bin/bash
#Modifica el script anterior para que indique si se trata de un fichero, de un directorio, de un enlace simbólico, un archivo especial de bloque, archivo especial de caracter. Debes pasarle el directorio /dev y verificar que funciona bien.

clear

directorio=$1

#Comprobación del numero de parametro y si es un directorio

if [[ $# -ne 1 ]]; then
  echo "Introduce un solo parametro con la ruta absoluta del directorio"
  exit 1
elif [[ ! -d $directorio ]]; then
  echo "El directorio no existe"
  exit 1
fi

contador=0

#Determinacion del tipo de fichero

for contenido in "$directorio"/*; do
  if [[ -d "$contenido" ]]; then
    echo "$contenido --> directorio"
  elif [[ -f "$contenido" ]]; then
    echo "$contenido --> fichero"
  elif [[ -b "$contenido" ]]; then
    echo "$contenido --> archivo especial de bloque"
  elif [[ -c "$contenido" ]]; then
    echo "$contenido --> archivo especial de caracter"
  elif [[ -h "$contenido" ]]; then
    echo "$contenido --> enlace simbolico"
  else
    echo "$contenido --> otros"
  fi
  ((contador++))
done

echo ""
echo "Número total de entradas procesadas: $contador"
