Algoritmo ejercicio_integrador_07
	Definir num, cont Como Entero
	Escribir 'Ingrese n�mero positivo'
	Leer num
	Si num > 0 Entonces // Si el n�mero es positivo
		Si num MOD 2 <> 0 Entonces // Si el n�mero es impar
			num <- num - 1
		FinSi
		cont <- num
		Mientras cont >= 0 Hacer
			Escribir Sin Saltar cont," "
			cont <- cont - 2
		FinMientras
		Escribir ""
	SiNo
		Escribir "ERROR: No es positivo"
	FinSi
FinAlgoritmo
