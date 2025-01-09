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

#Opcion 1

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

#Opcion 2

    2 {
        $fichero = Read-Host "Nombre del fichero que desea crear"
        $test_fichero = Test-Path $fichero
        if ($test_fichero -eq $false) {
            Write-Host "El fichero no existe, creando fichero..."
            New-Item $fichero -ItemType file
        } else {
            Write-Host "El fichero ya existe"
        }
        }

#Opcion 3

    3 {
        $directorio_fichero = Read-Host "A que le deseas cambiar el nombre? [fichero-directorio]"
        switch ($directorio_fichero) {
            fichero {
                $fichero = Read-Host "Introduce nombre del fichero"
                $test_fichero = Test-Path $fichero
                    if ($test_fichero -eq $false) {
                        Write-Host "El fichero no existe"
                    } else {
                        $nombre_nuevo = Read-Host "Introduce el nuevo nombre que le quieres dar"
                        Rename-Item $fichero $nombre_nuevo
                        Write-Host "Nombre del fichero modificado a $nombre_nuevo"
                    }
            }

            directorio {
                $directorio = Read-Host "Introduce la ruta del directorio"
                $test_directorio = Test-Path $directorio -PathType container 
                if ($test_directorio -eq $false) {
                    Write-Host "El directorio no existe"
                } else {
                    $nombre_nuev3o = Read-Host "Introduce el nuevo nombre que le quieres dar"
                    Rename-Item $directorio $nombre_nuevo
                    Write-Host "Nombre del directorio modificado a $nombre_nuevo"
                }
            }
        }
    }

    #Opcion 4

    4 {
        $fichero_directorio = Read-Host "Introduce el nombre del directorio o fichero a eliminar"
        $test = Test-Path $fichero_directorio
        if ($test -eq $false) {
            Write-Host "El fichero o directorio no existe"
        } else {
            Remove-Item $fichero_directorio
            Write-Host "$fichero_directorio eliminado"
        }
    }

    #Opcion 5

    5 {
        $fichero_directorio = Read-Host "Introduce directorio o fichero a verificar si existe"
        $test = Test-Path $fichero_directorio
        if ($test -eq $false) {
            Write-Host "El fichero o directorio no existe"
        } else {
            Write-Host "$fichero_directorio existe"
    }
    }

    #Opcion 6

    6 {
        $directorio = Read-Host "Introduce ruta de directorio a listar"
        $test = Test-Path $directorio -PathType container 
        if ($test -eq $false) {
            Write-Host "El directorio no existe o no es un directorio"
        } else {
            Write-Host "Listando..."
            Get-ChildItem -Path $directorio -Recurse
        }
    }

    #Opcion 7

    7 {
        Write-Host "Mostrando fecha y hora actuales"
        Get-Date

    }

    #Opcion 8

    8 {
        Write-Host "Saliendo..."
        exit
    }
}
}

