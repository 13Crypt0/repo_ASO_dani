[int]$numero = Read-Host "Escribe un numero"
Write-Host "Mostrando tabla de multiplicar del numero $numero"

for ($i = 0 ; $i -le 10; $i++ ) {
    $multiplicacion = $numero * $i
    Write-Host "$numero x $i = $multiplicacion"
}