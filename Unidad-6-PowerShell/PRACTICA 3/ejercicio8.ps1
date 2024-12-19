$nombre = Read-Host "Introduce tu nombre"
$sexo = Read-Host "Introduce tu sexo[W-M]"

#Grupo A --> Mujeres A a la M
#        --> Hombres N a la Z
#Grupo B --> Resto

if (($sexo -ieq "W" -and $nombre -lt "N") -or ($sexo -ieq "M" -and $nombre -gt "O")) {
    Write-Host "Hola $nombre, perteneces al grupo A"
} else {
    Write-Host "Hola $nombre, perteneces al grupo B"
}