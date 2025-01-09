[int]$numero_entero = Read-Host "Escribe un numero entero positivo"

if ($numero_entero % 2 -eq 0) {
    $numero_entero = $numero_entero - 1
}

Write-Host "Mostrando numeros impares:"

for ($i = $numero_entero; $i -ge 0; $i -= 2) {
    Write-Host -NoNewLine "$i, "
}
