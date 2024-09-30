#!/bin/bash
#Realiza un script que, dado un directorio pasado por parámetro, cree un archivo tar comprimido con gzip y con nombre igual a la fecha en formato yyyy-mm-dd seguido del directorio acabado en .tar.gz

clear

fecha=$(date +%F)

if [[ -d "$1" ]]; then
  nombre="${fecha}-${1}.tar.gz"
  tar -czf "$nombre" "$1"
else
  echo "No existe el directorio"
  exit 1
fi
