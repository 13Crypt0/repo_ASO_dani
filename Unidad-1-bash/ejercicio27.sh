#!/bin/bash
#Crea un script que contenga una función que se le pase por parámetro el nombre de un fichero recibido como parámetro del script. Dicha función deberá verificar su existe el fichero o no. El nombre de la función es “existe”. Si el resultado es positivo, el script debe cambiar sus permisos a ejecutable para el propietario, pero no para el resto.

clear

fichero=$1

#Comprobacion si existe fichero y si este no se encuentra.
#Agregando permisos de ejecucion a propietario

function existe() {
  if [[ $# -ne 1 ]]; then
    echo "Introduce 1 parametro"
    exit 1
  elif [[ ! -f $fichero ]]; then
    echo "El fichero no se encuentra. Introduce la ruta absoluta de este"
    exit 1
  else
    chmod u+x $fichero
  fi
}

existe "$fichero"
