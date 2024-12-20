[int]$edad = Read-Host "Introduce tu edad"

if ($edad -lt 4) {
    Write-Host "Entrada gratuita!"
} elseif ($edad -ge 4 -and $edad -lt 18) {
    Write-Host "Precio de la entrada: 5€"
} else {
    Write-Host "Precio de la entrada: 10€"
}