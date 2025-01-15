$nombre = Read-Host "Introduce nombre UO a eliminar"

Set-ADOrganizationalUnit -Identity "OU=$nombre,DC=aso,DC=local" -ProtectedFromAccidentalDeletion $false
Remove-ADOrganizationalUnit -Identity  "OU=$nombre,DC=aso,DC=local" -Recursive -Confirm:$False

Write-Host "UO: $nombre - Eliminado"