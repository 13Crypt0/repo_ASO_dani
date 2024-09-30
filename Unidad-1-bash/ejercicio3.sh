#!/bin/bash
#Modifica el script anterior para que además muestre por pantalla el número de líneas del archivo y el número de palabras.

clear

ls -l /etc > listado.txt

cat listado.txt

lineas=$(wc -l < listado.txt)
caracteres=$(wc -m < listado.txt)

echo ""
echo "Número de lineas: $lineas"
echo "Número de caracteres: $caracteres"
