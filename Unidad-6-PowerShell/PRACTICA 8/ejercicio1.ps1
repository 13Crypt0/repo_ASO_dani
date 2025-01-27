Write-Host "Creando Empresa_users"
New-Item C:\Empresa_users -ItemType directory

$empleados = Import-Csv C:\Users\Administrador\Desktop\archivos\empleados.csv -Delimiter ";"

Write-Host "Compartiendo Empresa_users"
New-SmbShare -Path C:\Empresa_users -Name empresa_users$
Revoke-SmbShareAccess -Name empresa_users$ -AccountName 'Todos' -Force
Grant-SmbShareAccess -Name empresa_users$ -AccountName 'Usuarios del dominio' -AccessRight Full -Force
Grant-SmbShareAccess -Name empresa_users$ -AccountName Administradores -AccessRight Full -Force
$ruta = "C:\Empresa_users"
$acl = get-acl -Path $ruta
$acl.setAccessRuleProtection($true,$false)
$permisoadmin = @('Administradores', 'FullControl', 'None', 'None', 'Allow')
$ace = New-Object -TypeName System.Security.AccessControl.FileSystemAccessRule -ArgumentList $permisoadmin
$acl.SetAccessRule($ace)
$permisousers = @('Usuarios del dominio', 'ReadAndExecute', 'None', 'None', 'Allow')
$ace = New-Object -TypeName System.Security.AccessControl.FileSystemAccessRule -ArgumentList $permisousers
$acl.SetAccessRule($ace)
Set-Acl -Path $ruta -AclObject $acl

Write-Host "Creando subdirectorios usuarios..."
foreach ($emp in $empleados) {
    New-Item C:\Empresa_users\$($emp.nombre).$($emp.apellido) -ItemType directory
    $ruta = "C:\Empresa_users\$($emp.nombre).$($emp.apellido)"
    $acl = get-acl -Path $ruta
    $acl.setAccessRuleProtection($true,$false)
    $permisoadmin = @('Administradores', 'FullControl', 'ContainerInherit,ObjectInherit', 'None', 'Allow')
    $ace = New-Object -TypeName System.Security.AccessControl.FileSystemAccessRule -ArgumentList $permisoadmin
    $acl.SetAccessRule($ace)
    $permisousuario = @("$($emp.nombre).$($emp.apellido)", 'FullControl', 'ContainerInherit,ObjectInherit', 'None', 'Allow')
    $ace = New-Object -TypeName System.Security.AccessControl.FileSystemAccessRule -ArgumentList $permisousuario
    $acl.SetAccessRule($ace)
    Set-Acl -Path $ruta -AclObject $acl
    Set-ADUser -Identity "$($emp.nombre).$($emp.apellido)" -ScriptPath "carpetas.bat" -HomeDrive "Z:" -HomeDirectory "\\SRV-ASO\Empresa_users$\$($emp.nombre).$($emp.apellido)"
}
Copy-Item 'C:\Users\Administrador\Desktop\repo_ASO_dani\Unidad-6-PowerShell\PRACTICA 8\carpetas.bat' 'C:\Windows\SYSVOL\sysvol\aso.local\scripts'
