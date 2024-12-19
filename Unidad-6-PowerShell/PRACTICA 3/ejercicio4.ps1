Write-Host "************ CALCULADORA ************"
Write-Host "Elige una de las siguientes opciones"
Write-Host "1 - Sumar"
Write-Host "2 - Restar"
Write-Host "3 - Multiplicar"
Write-Host "4 - Dividir"
Write-Host ""

$eleccion = Read-Host "Opcion [1-4]"
Write-Host ""
[int]$numero1 = Read-Host "Escribe un numero"
[int]$numero2 = Read-Host "Escribe otro numero"

switch ($eleccion) {
    1 {
        #Sumar
        $operacion_suma = $numero1 + $numero2
        Write-Host "La suma de $numero1 + $numero2 es igual a $operacion_suma"
    }
    2 {
        #Restar
        $operacion_restar = $numero1 - $numero2
        Write-Host "La resta de $numero1 - $numero2 es igual a $operacion_restar"
    }
    3 {
        #Multiplicar
        $operacion_mult = $numero1 * $numero2
        Write-Host "La suma de $numero1 x $numero2 es igual a $operacion_mult"
    }
    4 {
        #Dividir
        $operacion_div = $numero1 / $numero2
        Write-Host "La suma de $numero1 / $numero2 es igual a $operacion_div"
    }
    default {
        #Otro valor
        Write-Host "Has introducido una opcion incorrecta"
        Write-Host "Saliendo..."
    }
}



