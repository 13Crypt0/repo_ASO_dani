#!/bin/bash
#ACABAR

clear


directorio=$1

if [[ $# -ne 1 ]]; then
  echo "Introduce un solo parametro con la ruta absoluta del directorio"
elif [[ ! -d $directorio ]]; then
  echo "El directorio no existe"
  exit 1
fi

resultado_find=$(find $directorio -maxdepth 1 -mindepth 1)
if [[ -e $resultado_find ]]; then
    if [[ -d $resultado_find ]]; then
      tipo="Directorio"
    else
      tipo="Fichero"
fi
  salida="$resultado_find - $tipo"
  echo "$salida"
fi




#contar_entradas=$(cat listado.txt | wc -l)

#echo ""
#echo "Total de entradas procesadas: $contar_entradas"
