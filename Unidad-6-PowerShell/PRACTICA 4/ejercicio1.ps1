[string]$nombre_usuario = Read-Host "Cual es tu nombre?"
[int]$numero_entero = Read-Host "Escribe un numero entero"

for ($i=1;$i -le $numero_entero;$i++) {
    Write-Host "$nombre_usuario"
}