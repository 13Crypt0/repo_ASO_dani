#!/bin/bash
#Crea un shell script que al ejecutarlo muestre por pantalla uno de estos mensajes “Buenos días”, “Buenas tardes” o “Buenas noches”, en función de la hora que sea en el sistema (de 8:00 de la mañana a 15:00 será mañana, de 15:00 a 20:00 será tarde y el resto será noche). Para obtener la hora del sistema utiliza el comando date.


clear

hora=$(date +%H)

if [[ $hora -ge 8 && $hora -lt 15 ]]; then
  echo "Buenos días"
elif [[ $hora -ge 15 && $hora -lt 20 ]]; then
  echo "Buenas tardes"
else
  echo "Buenas noches"
fi
