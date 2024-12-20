$tipo_pizza = Read-Host "¿Quieres una pizza vegetariana? [si - no]"
Write-Host = ""

$base = "mozzarella y tomate"
switch ($tipo_pizza) { 
	si {
		#Pizza vegetariana
        Write-Host "Ingredientes base: $base"
		Write-Host "Ingredientes a elegir: pimiento o tofu"
        Write-Host ""
        $condimento = Read-Host "Elige un ingrediente"
        
        switch ($condimento) {
            pimiento {
                Write-Host ""
                Write-Host "Resultado final de la pizza:"
                Write-Host ""
                Write-Host "Tipo de pizza: Vegetariana ($tipo_pizza)"
                Write-Host "Ingredientes: $condimento, $base"
            }
            tofu {
                Write-Host ""
                Write-Host "Resultado final de la pizza:"
                Write-Host ""
                Write-Host "Tipo de pizza: Vegetariana ($tipo_pizza)"
                Write-Host "Ingredientes: $condimento, $base"
            }
            default {
                Write-Host "Ingrediente no valido"
                exit
            }
        }
	}
	
    no {
		#Pizza no vegetariana
        Write-Host "Ingredientes base: $base"
		Write-Host "Ingredientes: peperoni, jamon o salmon"
        Write-Host ""
        $condimento = Read-Host "Elige un ingrediente"
        
        switch ($condimento) {
            peperoni {
                Write-Host ""
                Write-Host "Resultado final de la pizza:"
                Write-Host ""
                Write-Host "Tipo de pizza: Vegetariana ($tipo_pizza)"
                Write-Host "Ingredientes: $condimento, $base"
            }
            jamon {
                Write-Host ""
                Write-Host "Resultado final de la pizza:"
                Write-Host ""
                Write-Host "Tipo de pizza: Vegetariana ($tipo_pizza)"
                Write-Host "Ingredientes: $condimento, $base"
            }
            salmon {
                Write-Host ""
                Write-Host "Resultado final de la pizza:"
                Write-Host ""
                Write-Host "Tipo de pizza: Vegetariana ($tipo_pizza)"
                Write-Host "Ingredientes: $condimento, $base"
            }
            default {
                Write-Host "Ingrediente no valido"
                exit
            }
        }
	}
	
    default {
		#Otro valor
		Write-Host "Valor incorrecto"
	}
}