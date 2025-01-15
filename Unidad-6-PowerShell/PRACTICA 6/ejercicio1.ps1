New-ADOrganizationalUnit -Name "Empresa" -Path "DC=aso,DC=local" -Description "Unidad Empresa"

$departamentos = Import-Csv C:\Users\Administrador\Desktop\archivos\departamentos.csv -Delimiter ";"
foreach ($dept in $departamentos) {
    New-ADOrganizationalUnit -Name "$($dept.departamento)" -Path "OU=Empresa,DC=aso,DC=local" -Description "$($dept.descripcion)"
}

foreach ($dept in $departamentos) {
    New-ADGroup -Name "G-$($dept.departamento)" -GroupCategory Security -GroupScope Global -Path "OU=$($dept.departamento),OU=Empresa,DC=aso,DC=local"

}

#$empleados = Import-Csv C:\Users\Administrador\Desktop\archivos\empleados.csv -Delimiter ";"
#foreach ($emp in $empleados) {
#    New-ADUser -Name "$($emp.nombre) $($emp.apellido)" -Path "CN=Users,DC=aso,DC=local" -SamAccountName "$($emp.nombre)" -UserPrincipalName "mariag@empresa.local" -AccountPassword (ConvertTo-SecureString "aso2023." -AsPlainText -Force) -GivenName "Maria" -Surname "Garcia" -ChangePasswordAtLogon $true -Enabled $true
#}