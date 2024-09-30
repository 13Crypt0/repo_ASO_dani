#!/bin/bash
#Realiza un script que guarde en un fichero el listado de archivos y directorios de la carpeta etc, a posteriori que imprima por pantalla dicho listado.

clear

ls -l /etc > listado.txt

cat "listado.txt"
