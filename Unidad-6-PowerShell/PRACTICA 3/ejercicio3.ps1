[int]$numero1 = Read-Host "Escribe un numero"
[int]$numero2 = Read-Host "Escribe otro numero"

if ($numero1 -eq $numero2) {
    Write-Host "$numero1 es igual a $numero2"
} elseif ($numero1 -lt $numero2) {
    Write-Host "$numero1 es menor que $numero2"
} else {
    Write-Host "$numero1 es mayor que $numero2"
}