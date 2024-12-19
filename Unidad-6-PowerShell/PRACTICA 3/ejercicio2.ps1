[int] $edad = Read-Host "Escribe tu edad"

if ($edad -ge 18){
    Write-Host "Eres mayor de edad"
} else {
    Write-Host "Eres menor de edad"
}