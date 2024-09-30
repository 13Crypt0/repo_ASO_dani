#!/bin/bash
#Crea un script donde se pida al usuario dos números y muestre la media aritmética

clear

read -p "Introduce un primer numero: " numero1
read -p "Introduce un segundo numero: " numero2

#Calculando media

echo ""
  media=$(((numero1 + numero2) / 2))
echo "La media aritmetica es de: $media"
