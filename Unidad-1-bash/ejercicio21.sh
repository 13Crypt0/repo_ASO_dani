#!/bin/bash

clear

echo "Adivina el numero - (1 al 100)"
echo "Introduce 0 si quieres rendirte"
echo ""
random=$(($RANDOM%100))

while [[ $random -ne $numero_introducido ]]; do
  read -p "Introduce un numero: " numero_introducido
    if [[ $numero_introducido -lt 0 || $numero_introducido -gt 100 ]]; then
      echo "El numero introducido no corresponde."
      echo "Introduce un numero entre 0 y 100"
    fi
    if [[ $numero_introducido -eq 0 ]]; then
      echo ""
      break
    fi
    if [[ $numero_introducido -lt $random ]]; then
      echo "El numero a adivinar es mayor que el introducido ($numero_introducido)"
    elif [[ $numero_introducido -gt $random ]]; then
      echo "El numero a adivinar es menor que el introducido ($numero_introducido)"
    else
      echo "Felicidades!!"
    fi
  echo ""
done

echo "El numero a adivinar era el: $random"