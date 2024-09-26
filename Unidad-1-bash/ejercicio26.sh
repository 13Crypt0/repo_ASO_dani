#!/bin/bash
#acabar, pilla todos a la vez el find por eso no ejecuta
clear

echo "Generando lista archivos peligosos..."

#Enlaces simbolicos eliminados

resultado=$(find / -exec ls -l {} \; 2> /dev/null | egrep '(^[-drwxst]{7}[rwx]{3})')

for i in $resultado; do
  echo "$i" | egrep "^.*/.*$"
  ((contador++))
done
