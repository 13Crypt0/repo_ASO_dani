#!/bin/bash
#Realiza un script utilizando funciones que permita crear un informe de las IP libres en la red en la que se encuentra el equipo
clear

function informe () {

  interfazred=$(ip route | grep "default via" | awk -F ' ' '{print $5}')
  ip=$(ip -o -f inet addr show "$interfazred" | awk '{print $4}' | awk -F '/' '{print $1}')
  CIDR=$(ip r | grep -E "$interfazred".*."src" | cut -d" " -f 1)
  broadcast=$(ip -o -f inet addr show "$interfazred" | awk '{print $6}')
  mascara=$(echo "$CIDR" | cut -d/ -f2)

echo "INFORME" >> Informe.txt
echo "" >> Informe.txt
echo "GENERANDO INFORME..."
echo "IP del equipo: $ip" >> Informe.txt
echo "CIDR: $CIDR" >> Informe.txt
echo "Broadcast: $broadcast" >> Informe.txt
echo "Máscara de subred: $mascara" >> Informe.txt
echo "" >> Informe.txt
echo "Listado IP:" >> Informe.txt
echo "" >> Informe.txt

#Conversion de la nuestra ip a xxx.xxx.xxx. para agregar variable i para incrementar la ip

remake=$(echo "$ip" | awk -F '.' '{print $1 "." $2 "." $3 "." }')
for (( i=1; i<=254; i++)); do
  consultaip=$(ping -c 1 -w 1 "$remake$i" > /dev/null ; echo "$?")
    if [[ "$consultaip" -ge 1 ]]; then
      echo "La IP "$remake$i" ESTA LIBRE" >> Informe.txt
    else
      echo "La IP "$remake$i" NO ESTA LIBRE" >> Informe.txt
    fi
done

cat Informe.txt | more
echo ""
echo "Informe almacenado"
}

informe
