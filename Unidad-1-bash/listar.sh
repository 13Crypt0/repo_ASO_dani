#!/bin/bash

clear

if [[ $# -ne 1 ]]; then
  echo "Introduce el numero de parametros correcto: 1"
  echo "Introduce un directorio como parametro"
  exit 1
elif [[ ! -d $1 ]]; then
  echo "El directorio no existe"
  echo "Saliendo"
  exit 1
fi

parametro=$1

function filtrado () {

  for i in "$parametro"/*; do
    if [[ -d $i ]]; then
      echo "Directorio: $i"
      ((directorio++))
      permisos=$(ls -ld $i | awk -F ' ' '{print $1}')
      echo "Permisos de $i: $permisos"
      echo ""
    elif [[ -f $i ]]; then
      echo "Fichero: $i"
      ((fichero++))
      permisos=$(ls -ld $i | awk -F ' ' '{print $1}')
      echo "Permisos de $i: $permisos"
      echo ""
    fi
  done
  echo ""
  echo "Total ficheros: $fichero"
  echo "Total directorios: $directorio"

}

function permshumano () {
  for a in "$parametro"/*; do
    perms=$(ls -ld $a | awk -F ' ' '{print $1}')
    permisosowner=${perms:1:3}
    permisosgrupo=${perms:4:3}
    permisosotros=${perms:7:3}
    impresion $permisosowner
    impresion $permisosgrupo
    impresion $permisosotros
  done
}


function impresion () {
  case $1 in
    rwx)
      echo " $a $1: Lectura, escritura y ejecucion"
    ;;
    rw-)
      echo " $a $1: Lectura y escritura"
    ;;
    -wx)
      echo " $a $1: Escritura y ejecucion"
    ;;
     --x)
      echo " $a $1: Ejecucion"
     ;;
     r-x)
      echo " $a $1: Lectura y ejecucion"
     ;;
     r--)
      echo " $a $1: Lectura"
     ;;
      --x)
       echo " $a $1: Ejecucion"
     ;;
      ---)
       echo " $a $1: Sin permisos"
     ;;
     esac
}

filtrado

echo ""
echo "Permisos humanos"
echo ""
echo "1º Owner"
echo "2º Grupo"
echo "3º Otros"
echo ""
echo "-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-"
echo ""

permshumano
