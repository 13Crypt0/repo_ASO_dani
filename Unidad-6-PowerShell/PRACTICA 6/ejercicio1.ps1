# Creación de la Unidad Organzativa Empresa
New-ADOrganizationalUnit -Name "Empresa" -Path "DC=aso,DC=local" -Description "Unidad Empresa"

# Creación de Unidad Organizativa Departamentos
$departamentos = Import-Csv C:\Users\Administrador\Desktop\archivos\departamentos.csv -Delimiter ";"
foreach ($dept in $departamentos) {
    New-ADOrganizationalUnit -Name "$($dept.departamento)" -Path "OU=Empresa,DC=aso,DC=local" -Description "$($dept.descripcion)"
}

# Creación Grupos Departamentos
foreach ($dept in $departamentos) {
    New-ADGroup -Name "G-$($dept.departamento)" -GroupCategory Security -GroupScope Global -Path "OU=$($dept.departamento),OU=Empresa,DC=aso,DC=local"

}

# Creación Empleados
$empleados = Import-Csv C:\Users\Administrador\Desktop\archivos\empleados.csv -Delimiter ";"
foreach ($emp in $empleados) {
    New-ADUser -Name "$($emp.nombre) $($emp.apellido)" -Path "OU=$($emp.departamento),OU=Empresa,DC=aso,DC=local" -SamAccountName "$($emp.nombre).$($emp.apellido)" -UserPrincipalName "$($emp.nombre)@aso.local" -AccountPassword (ConvertTo-SecureString "aso2025." -AsPlainText -Force) -GivenName "$($emp.nombre)" -Surname "$($emp.apellido)" -ChangePasswordAtLogon $true -Enabled $true
}


#foreach ($emp in $empleados) {
#    Add-ADGroupMember -Identity "$($emp.departamento)" -Members $($emp.nombre).$($emp.apellido)
#}