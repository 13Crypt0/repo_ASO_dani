[int]$numero1 = Read-Host "Introduce numero 1"
[int]$numero2 = Read-Host "Introduce numero 2"

Write-Host ""
Write-Host "****** CALCULADORA ******"
Write-Host ""
Write-Host "1. Sumar"
Write-Host "2. Restar"
Write-Host "3. Multiplicar"
Write-Host "4. Dividir"
Write-Host "5. Salir"

Function Sumar ($numero1, $numero2) {
	$sumar = $numero1 + $numero2
	Write-Host "El resultado de $numero1 + $numero2 es igual a $sumar"
}

Function Restar ($numero1, $numero2) {
	$restar = $numero1 - $numero2
	Write-Host "El resultado de $numero1 - $numero2 es igual a $restar"
}

Function Multiplicar ($numero1, $numero2) {
	$multiplicar = $numero1 * $numero2
	Write-Host "El resultado de $numero1 x $numero2 es igual a $multiplicar"
}

Function Dividir ($numero1, $numero2) {
	$dividir = $numero1 / $numero2
	Write-Host "El resultado de $numero1 / $numero2 es igual a $dividir"
}

[int]$opcion = Read-Host "Seleccione una opcion [1-5]"

switch ($opcion) {
    1 {
        Sumar $numero1 $numero2
    }
    
    2 {
        Restar $numero1 $numero2
    }

    3 {
        Multiplicar $numero1 $numero2
    }

    4 {
        Dividir $numero1 $numero2
    }

    default {
        Write-Host "Opcion no valida"
    }

}