Write-Host "Creando directorio Empresa..."
New-Item C:\Empresa -ItemType directory

$departamentos = Import-Csv C:\Users\Administrador\Desktop\archivos\departamentos.csv -Delimiter ";"

Write-Host "Creando subdirectorios..."
foreach ($dept in $departamentos) {
    New-Item C:\Empresa\$($dept.departamento) -ItemType directory
}

Write-Host "Compartiendo Empresa..."
New-SmbShare -Path C:\Empresa -Name Empresa

Write-Host "Agregando permisos a Empresa..."
Revoke-SmbShareAccess -Name Empresa -AccountName Todos -Force
Grant-SmbShareAccess -Name Empresa -AccountName 'Usuarios del dominio' -AccessRight Change -Force
Grant-SmbShareAccess -Name Empresa -AccountName Administradores -AccessRight Full -Force
$ruta = "C:\Empresa"
$acl = Get-Acl -Path $ruta
$acl.SetAccessRuleProtection($true, $false)
$permisoadmin = @('Administradores', 'FullControl', 'None', 'None', 'Allow')
$ace = New-Object -TypeName System.Security.AccessControl.FileSystemAccessRule -ArgumentList $permisoadmin
$acl.SetAccessRule($ace)
$permisousers = @('Usuarios del dominio', 'ReadAndExecute', 'None', 'None', 'Allow')
$ace = New-Object -TypeName System.Security.AccessControl.FileSystemAccessRule -ArgumentList $permisousers
$acl.SetAccessRule($ace)
$acl | Set-Acl -Path $ruta


Write-Host "Asignando permisos a subdirectorios..."
foreach ($dept in $departamentos) {
    $ruta = "C:\Empresa\$($dept.departamento)"
    $acl = Get-Acl -Path $ruta
    $acl.SetAccessRuleProtection($true, $false)
    $permisoadmin = @('Administradores', 'FullControl', 'ContainerInherit,ObjectInherit', 'None', 'Allow')
    $ace = New-Object -TypeName System.Security.AccessControl.FileSystemAccessRule -ArgumentList $permisoadmin
    $acl.SetAccessRule($ace)
    $permisogrupo = @("G-$($dept.departamento)", 'Modify', 'ContainerInherit,ObjectInherit', 'None', 'Allow')
    $ace = New-Object -TypeName System.Security.AccessControl.FileSystemAccessRule -ArgumentList $permisogrupo
    $acl.SetAccessRule($ace)
    $permisousers = @('Usuarios del dominio', 'ReadAndExecute', 'ContainerInherit,ObjectInherit', 'None', 'Allow')
    $ace = New-Object -TypeName System.Security.AccessControl.FileSystemAccessRule -ArgumentList $permisousers
    $acl.SetAccessRule($ace)
    $acl | Set-Acl -Path $ruta
}

Write-Host "Todo ha ido correctamente"