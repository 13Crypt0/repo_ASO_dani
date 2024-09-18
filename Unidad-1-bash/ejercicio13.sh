#!/bin/bash

clear

echo "Escribe "Añadir" para añadir un registro"
echo "Escribe "Buscar" para buscar entradas por nombre, direccion o telefono"
echo "Escribe "Listar" para visualizar todo el archivo"
echo "Escribe "Ordenar" para ordenar los registros alfabéticamente"
echo "Escribe "Borrar" para borrar el archivo"

echo ""

read -p "Introduce una opción mencionada: " opcion
case $opcion in

  Añadir)
    read -p "Añade un registro: " contenido
    echo "$contenido" >> lista.txt
    echo "Registro añadido"
  ;;

  Buscar)
    read -p "Introduce nombre dirección o telefono: " filtro
      cat lista.txt | grep $filtro
    exit 0
  ;;

  Listar)
    cat lista.txt
    exit 0
  ;;

  Ordenar)
    cat lista.txt | sort
    exit 0
  ;;

  Borrar)
    rm lista.txt
    sleep 0.5
    echo "Listado eliminado"
  ;;

  *)
    echo "Opcion no valida"
    exit 1

esac
