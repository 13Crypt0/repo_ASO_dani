New-Item C:\Empresa -ItemType directory

$departamentos = Import-Csv C:\Users\Administrador\Desktop\archivos\departamentos.csv -Delimiter ";"
foreach ($dept in $departamentos) {
    New-Item C:\Empresa\$($dept.departamento) -ItemType directory
}

New-SmbShare -Path C:\Empresa -Name empresa
Revoke-SmbShareAccess -Name empresa -AccountName Todos -Force
Grant-SmbShareAccess -Name empresa -AccountName Administrador -AccessRight Full -Force
Grant-SmbShareAccess -Name empresa -AccountName "Usuarios del dominio" -AccessRight Change -Force
function quitar_herencia ($path) {
	$acl = Get-Acl -Path $path
    $acl.SetAccessRuleProtection($true, $false)
    $permisosadd = 'Administrador', 'FullControl', 'ContainerInherit, ObjectInherit', 'None', 'Allow'
    $ace = New-Object -TypeName System.Security.AccessControl.FileSystemAccessRule -ArgumentList $permisosadd
    $acl.SetAccessRule($ace)
    $acl | Set-Acl -Path $path
}
function aplicar_acl ($path, $user, $perms, $herencias, $propagacion) {
	$acl = Get-Acl -Path $path
    $permisosadd = "$user", "$perms", "$herencias", "$propagacion", "Allow"
    $ace = New-Object -TypeName System.Security.AccessControl.FileSystemAccessRule -ArgumentList $permisosadd
    $acl.SetAccessRule($ace)
    $acl | Set-Acl -Path $path
}

# Para empresa
quitar_herencia "C:\Empresa"
aplicar_acl "C:\Empresa" 'Usuarios del dominio' 'ReadAndExecute' 'None' 'None'

# Para cada departamento
foreach ($dept in $departamentos) {
    quitar_herencia "C:\Empresa\$($dept.departamento)"
    aplicar_acl "C:\Empresa\$($dept.departamento)" "G-$($dept.departamento)" 'Modify' 'ContainerInherit, ObjectInherit' 'None'
    aplicar_acl "C:\Empresa\$($dept.departamento)" "Usuarios del dominio" 'ReadAndExecute' 'ContainerInherit, ObjectInherit' 'None'
}

Write-Host "Todo ha ido correctamente"