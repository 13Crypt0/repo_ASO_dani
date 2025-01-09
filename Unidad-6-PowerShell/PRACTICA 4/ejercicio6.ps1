Write-Host "Bienvenido al juego de adivinar un numero"
Write-Host "Tienes que adivinar un numero del 0 al 100"

[int]$numero_random = Get-Random -Maximum 100 -Minimum 0

$numero_usuario = 101
while ($numero_random -ne $numero_usuario) {
    [int]$numero_usuario = Read-Host "Introduce un numero"
    if ($numero_usuario -gt $numero_random) {
        Write-Host "El numero a adivinar es menor al numero introducido"
    } elseif ($numero_usuario -lt $numero_random) {
        Write-Host "El numero a adivinar es mayor al numero introducido"
    } else {
        Write-Host "Enhorabuena, el numero a adivinar era el $numero_random"
    }
}