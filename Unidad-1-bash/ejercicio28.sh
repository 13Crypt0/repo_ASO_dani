#!/bin/bash

clear
#Falta nombre de la red
function informacion() {
  ip=$(ip -o -f inet addr show enp0s3 | awk '{print $4}' | awk -F '/' '{print $1}')
  CIDR=$(ip r | grep src | cut -d" " -f 1)
  broadcast=$(ip -o -f inet addr show enp0s3 | awk '{print $6}')
  marcara=$(ip -o -f inet addr show enp9s0 | awk '{print $4}' | awk -F '/' '{print $2}') #FALLO NO DEVUELVE MASCARA AL HABER DOS FILTRADOS

echo "IP del equipo: $ip"
echo "CIDR: $CIDR"
echo "Broadcast: $broadcast"
echo "Máscara de subred: /$mascara"
}

informacion
