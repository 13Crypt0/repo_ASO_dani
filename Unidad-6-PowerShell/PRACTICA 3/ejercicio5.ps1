$path = Read-Host "Introduce un fichero o directorio"

$comprobar = Test-Path $path

if ($comprobar -ieq $True) {
    Write-Host "El directorio o fichero $path existe"
} else {
    Write-Host "El directorio o fichero $path no existe"
}