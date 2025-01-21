Write-Host "Imprimiendo carpetas compartidas..."
Get-SmbShare | Where-Object { $_.Name -notin 'NETLOGON', 'SYSVOL'} | Where-Object {$_.Name -notlike '*$' }

Write-Host "Creando directorio ASO"
New-Item C:\ASO -ItemType directory

Write-Host "Compartiendo ASO..."
New-SmbShare -Path C:\ASO -Name ASO

Write-Host "Aplicando permisos a ASO para profesores y alumnos..."
Revoke-SmbShareAccess -Name ASO -AccountName Todos -Force
Grant-SmbShareAccess -Name ASO -AccountName profesores -AccessRight Full -Force
Grant-SmbShareAccess -Name ASO -AccountName alumnos -AccessRight Read -Force
