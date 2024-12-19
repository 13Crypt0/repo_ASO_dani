$path = Read-Host "Introduce un directorio"

$comprobar = Test-Path $path -PathType Container
if ($comprobar -ieq $False) {
    Write-Host "El directorio no existe o no es un directorio"
    Write-Host "Saliendo..."
    exit
} else {
    Write-Host "Listando..."
    Get-ChildItem -Path $path -Recurse
}