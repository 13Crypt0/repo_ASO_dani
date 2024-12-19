$tributo = Read-Host "¿Cuanto tributas anualmente?"

if ($tributo -lt 10000) {
    Write-Host "Tipo impositivo del 5%"
} elseif ($tributo -ge 10000 -and $tributo -lt 20000) {

}

#Acabar