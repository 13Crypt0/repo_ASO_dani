ç#!/bin/bash

clear
#Falta nombre de la red
function informacion() {

  interfazred=$(ip route | grep "default via" | awk -F ' ' '{print $5}')
  ip=$(ip -o -f inet addr show "$interfazred" | awk '{print $4}' | awk -F '/' '{print $1}')
  CIDR=$(ip r | grep -E "$interfazred".*."src" | cut -d" " -f 1)
  broadcast=$(ip -o -f inet addr show "$interfazred" | awk '{print $6}')
  mascara=$("$CIDR" | cut -d/ -f2)

echo "IP del equipo: $ip"
echo "CIDR: $CIDR"
echo "Broadcast: $broadcast"
echo "Máscara de subred: $mascara"
}

informacion

function ping() {

remake=$(echo "$ip" | awk -F '.' '{print $1 "." $2 "." $3 "." }')

for (( i=1; i<=254; i++)); do
  consultaip=$(ping -c 1 -w 1 "$remake$i" > /dev/null ; echo "$?")
    if [[ "$consultaip" -ge 1 ]]; then
      echo "La IP "$remake$i" ESTA LIBRE"
    else
      echo "La IP "$remake$i" NO ESTA LIBRE"
    fi
done

}













function informe () {
  echo "GENERANDO INFORME..."
  echo ""
  informacion >> Informe.txt
  ping >> Informe.txt
}
