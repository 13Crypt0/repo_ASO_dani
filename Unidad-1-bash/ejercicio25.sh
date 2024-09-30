#!/bin/bash
#Realiza un script que muestre la lista de los últimos usuarios que iniciaron sesión, incluidas las direcciones IP Origen. (Solo debes mostrar las líneas en las que aparece una IP). Debes hacer uso del comando last y egrep.

clear

echo "Mostrando ultimas conexiones: "

IP=`last | egrep -o '([0-9]{1,3}\.){3}[0-9]{1,3}'`
echo ""
echo "$IP"
