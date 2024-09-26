#!/bin/bash

clear

fichero=$1

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
