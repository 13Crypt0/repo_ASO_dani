$password1 = Read-Host "Introduce una contraseña"
$password2 = Read-Host "Vuelve a introducir la contraseña"
if ($password1 -ieq $password2) {
    Write-Host "Las contraseñas coinciden"
} else {
    Write-Host "Las contraseñas no coinciden"
}