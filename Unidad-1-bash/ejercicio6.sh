#!/bin/bash
#Crea un script donde se pida al usuario una palabra y se vaya añadiendo al mismo fichero de nombre lista.txt. Cada vez que se ejecute el script, se añadirá la nueva palabra al archivo lista.txt.

clear

read -p "Introduce una palabra: " palabra

echo "$palabra" >> lista.txt
