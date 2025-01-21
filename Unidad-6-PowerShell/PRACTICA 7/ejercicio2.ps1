New-Item C:\Empresa -ItemType directory

$departamentos = Import-Csv C:\Users\Administrador\Desktop\archivos\departamentos.csv -Delimiter ";"

foreach ($dept in $departamentos) {
    New-Item C:\Empresa\$($dept.departamento) -ItemType directory
}

New-SmbShare -Path C:\Empresa -Name Empresa
foreach ($dept in $departamentos) {
    New-Item C:\Empresa\$($dept.departamento) -ItemType directory
}
