[double]$puntuacion = Read-Host "Introduce la puntuacion recibida"

if ($puntuacion -lt 0 -or $puntuacion -gt 1) {
    Write-Host "Puntuacion incorrecta [0 -1]"
    Write-Host "Saliendo..."
    exit
} elseif ($puntuacion -ge 0.0 -and $puntuacion -lt 0.4) {
    Write-Host "Nivel: Inaceptable"
    $calculo = $puntuacion * 2400
    Write-Host "Bonificacion de: $calculo €"
} elseif ($puntuacion -ge 0.4 -and $puntuacion -lt 0.6) {
    Write-Host "Nivel: Aceptable"
    $calculo = $puntuacion * 2400
    Write-Host "Bonificacion de: $calculo €"
} elseif ($puntuacion -ge 0.6) {
    Write-Host "Nivel: Meritorio"
    $calculo = $puntuacion * 2400
    Write-Host "Bonificacion de: $calculo €"
}