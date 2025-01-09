Write-Host "Bienvenido a mi menu"
Write-Host ""
Write-Host "Opcion 1 - Crear carpeta"
Write-Host "Opcion 2 - Crear un fichero nuevo"
Write-Host "Opcion 3 - Cambiar el nombre de un archivo o carpeta"
Write-Host "Opcion 4 - Borrar un archivo o carpeta"
Write-Host "Opcion 5 - Verificar si existe un fichero o carpeta"
Write-Host "Opcion 6 - Mostrar el contenido de un directorio"
Write-Host "Opcion 7 - Mostrar la fecha y hora actuales"
Write-Host "Opcion 8 - Salir"



while ($opcion -ne 0 ) { 
[int]$opcion = Read-Host "Elige una opcion (1-8)"

switch ($opcion) {
    1 {
        $directorio = Read-Host "Introduce la ruta de la carpeta a crear"
        $test_directorio = Test-Path $directorio -PathType container 
        if ($test_directorio -eq $false) {
            Write-Host "La carpeta no existe, creando carpeta..."
            New-Item $directorio -ItemType directory
        } else {
            Write-Host "La carpeta ya existe"
        }
    }
    2 {
        $fichero = 


}
}
