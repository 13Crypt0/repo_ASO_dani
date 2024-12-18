[int]$horas = Read-Host "Introduce las horas que tienes trabajadas: "
[double]$valor_hora = Read-Host "Introduce cuanto vale la hora: "
$salario = $horas * $valor_hora
Write-Host = "Te pertenecen:"$salario