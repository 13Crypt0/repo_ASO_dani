$contraseña_1 = Read-Host "Introduce una contraseña"
do {
	$contraseña_2 = Read-Host "Vuelve a introducir la contraseña"
} until ($contraseña_1 -ceq $contraseña_2)