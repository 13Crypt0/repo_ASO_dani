[int]$numero_entero = Read-Host "Escribe un numero entero positivo"

for ($i=$numero_entero;0 -le $i;$i--) {
    Write-Host -NoNewLine "$i, "
    Start-Sleep -Seconds 1
}