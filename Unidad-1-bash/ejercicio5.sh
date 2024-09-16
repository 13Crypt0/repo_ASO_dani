#!/bin/bash

clear

read -p "Introduce un primer numero: " numero1
read -p "Introduce un segundo numero: " numero2

echo ""
media=$(((numero1 + numero2) / 2))
echo "La media aritmetica es de: $media"
