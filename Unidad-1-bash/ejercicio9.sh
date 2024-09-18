#!/bin/bash

clear
echo "*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*"
echo "*     Introduce 1 si desea sumar          *"
echo "*     Introduce 2 si desea restar         *"
echo "*     Introduce 3 si desea multiplicar    *"
echo "*     Introduce 4 si desea dividir        *"
echo "*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*"

echo ""
read -p "Introduce una opcion: " opcion

case $opcion in

  1)
    read -p "Introduce un 1º numero: " numero1
    read -p "Introduce un 2º numero: " numero2
      suma=$(( numero1 + numero2 ))
      echo "El resultado es $suma"
      exit 0
    ;;
  2)
    read -p "Introduce un 1º numero: " numero1
    read -p "Introduce un 2º numero: " numero2
      resta=$(( numero1 - numero2 ))
      echo "El resultado es $resta"
      exit 0
    ;;
  3)
    read -p "Introduce un 1º numero: " numero1
    read -p "Introduce un 2º numero: " numero2
      multiplicar=$(( numero1 * numero2 ))
      echo "El resultado es $multiplicar"
      exit 0
    ;;
  4)
    read -p "Introduce un 1º numero: " numero1
    read -p "Introduce un 2º numero: " numero2
      division=$(( numero1 / numero2 ))
      echo "El resultado es $division"
      exit 0
    ;;
  *)
    echo "Opcion no valida."
    echo "Introduce una opcion valida (1 - 2 - 3 - 4)"
    exit 1
    ;;
esac

