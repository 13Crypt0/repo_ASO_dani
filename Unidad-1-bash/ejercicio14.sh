#!/bin/bash

clear

#Comprobar argumentos introducidos
if [[ $# -lt 4 || $# -gt 5 ]]; then
  echo "Error. La sintaxis correcta es ./gestionusuarios.sh alta/baja nombre apellido1 apellido2 [grupo]"
  exit 1
fi

#Variables
altaobaja=$1
nombre=$2
apellido1=$3
apellido2=$4
grupo=$5

#Corte de nombres con almacenamiento variables
apellido1cortado=$(echo "$apellido1" | cut -c 1-2)
apellido2cortado=$(echo "$apellido2" | cut -c 1-2)
nombrecortado=$(echo "$nombre" | cut -c 1)


#Creacion identificador
identificador=$(echo "alu"$apellido1cortado""$apellido2cortado""$nombrecortado"")

#ALTA
#Comprobar si existe grupo y si no existe se crea
case $altaobaja in
  alta)
    if [[ -z $grupo ]]; then
      grupo=$identificador
      sudo groupadd "$grupo"
      echo "Grupo "$grupo" creado"
    else

#Comprobar que el usuario existe y creación de este
comprobaruser=$(id "$identificador" > /dev/null 2> /dev/null ; echo $?)
    if [[ $comprobaruser -ge 1 ]]; then
      if [[ -z $grupo ]]; then
      sudo useradd -m -g "$grupo" "$identificador" -s /bin/bash
      echo "Usuario "$identificador" creado"
    else
      echo "El usuario "$identificador" ya existe"
      exit 1
    fi
;;

comprobargrupo=$(getent groups "$grupo" > /dev/null 2> /dev/null ; echo $?)

      if [[ $comprobargrupo -ge 1 ]]; then
        sudo groupadd "$grupo"
        echo "Grupo "$grupo" creado"
      else
        echo "El grupo "$grupo" ya existe"
      fi
    fi


#BAJA
#Comprobacion que existe el usuario y hacer la baja
  baja)
comprobaruser=$(id "$identificador" > /dev/null 2> /dev/null ; echo $?)
borrargrupo=$(groups $identificador | awk -F ' : ' '{print $2}')
    if [[ $comprobaruser -eq 0 ]]; then
      sudo groupdel -f "$borrargrupo"
      sudo userdel -r "$identificador" 2>/dev/null
      echo "Usuario "$identificador" eliminado"
      echo "Grupo "$borrargrupo" eliminado"
    else
      echo "El usuario "$identificador" no existe"
    fi

;;

#Otros casos
  *)
    echo "Error. La sintaxis correcta es ./gestionusuarios.sh alta/baja nombre apellido1 apellido2 [grupo]"
;;
esac
