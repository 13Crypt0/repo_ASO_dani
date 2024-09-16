#!/bin/bash

clear

fecha=$(date +%F)

if [[ -d "$1" ]]; then
  nombre="${fecha}-${1}.tar.gz"
  tar -czf "$nombre" "$1"
else
  echo "No existe el directorio"
  exit 1
fi




