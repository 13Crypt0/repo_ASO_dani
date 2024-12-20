$tributo = Read-Host "¿Cuanto tributas anualmente?"

if ($tributo -lt 10000) {
    Write-Host "Tipo impositivo del 5%"
} elseif ($tributo -ge 10000 -and $tributo -lt 20000) {
    Write-Host "Tipo impositivo del 15%"
} elseif ($tributo -ge 20000 -and $tributo -lt 35000) {
    Write-Host "Tipo impositivo del 20%"
} elseif ($tributo -ge 35000 -and $tributo -lt 60000) {
    Write-Host "Tipo impositivo del 30%"
} else {
    Write-Host "Tipo impositivo del 45%"
}