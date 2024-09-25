#!/bin/bash
#acabar, pilla todos a la vez el find por eso no ejecuta
clear

echo "Generando lista archivos peligosos..."

#Enlaces simbolicos eliminados

contador=1
i=0

while [[ $i -eq $contador ]]; do
peligrosos=`ls -lR / 2>/dev/null| egrep '(^[-pcbdrwxst]{7}[rwx]{3})' | awk '{print "/"$NF}'`
  find / -name $peligrosos 2>/dev/null > archivos_peligrosos.txt
   ((contador++))
  done
