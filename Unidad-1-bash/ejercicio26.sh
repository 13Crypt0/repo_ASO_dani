#!/bin/bash
clear

echo "Generando lista archivos peligosos..."

resultado=$(find / -exec ls -l {} \; 2> /dev/null | egrep '(^[-drwxst]{7}[rwx]{3})')

for i in $resultado; do
  echo "$i" | egrep "^.*/.*$" >> archivos_peligrosos.txt
  ((contador++))
done
