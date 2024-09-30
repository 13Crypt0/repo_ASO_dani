#!/bin/bash
#Realiza un script que busque cualquier fichero que pueda ser modificado por cualquier usuario (— — rwx) y guarde la lista de ficheros con la ruta exacta en el archivo archivos_peligrosos.txt

clear

echo "Generando lista archivos peligosos..."

#Busqueda recursiva de los ficheros con permisos rwx en otros

resultado=$(find / -exec ls -l {} \; 2> /dev/null | egrep '(^[-drwxst]{7}[rwx]{3})')

#Agregando a archivos_peligrosos.txt solamente la ruta absoluta

for i in $resultado; do
  echo "$i" | egrep "^.*/.*$" >> archivos_peligrosos.txt
  ((contador++))
done
