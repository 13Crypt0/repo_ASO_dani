$usuarios = Import-Csv "C:\Users\Administrador\Desktop\repo_ASO_dani\Unidad-6-PowerShell\PRACTICA 5\usuarios.csv"

foreach ($user in $usuarios)
{
 	Write-Host "Nombre: $($user.nombre) Apellidos: $($user.apellidos) Grupo: $($user.grupo)"
}
