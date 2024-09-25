#!/bin/bash

clear

echo "Mostrando ultimas conexiones: "

IP=`last | egrep -o '([0-9]{1,3}\.){3}[0-9]{1,3}'`
echo ""
echo "$IP"
