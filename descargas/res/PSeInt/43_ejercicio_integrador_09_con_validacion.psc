Algoritmo ejercicio_integrador_09_con_validacion
	Definir cantPersonas,edad,cont,contMayoresEdad Como Entero
	Definir porcMayores Como Real
	contMayoresEdad <- 0
	Escribir 'Ingrese una cantidad de personas'
	Leer cantPersonas
	Mientras cantPersonas <= 0 Hacer
		Escribir "ERROR: Ingrese una cantidad positiva"
		Leer cantPersonas
	FinMientras
	Para cont<-1 Hasta cantPersonas Hacer
		Escribir 'Ingrese la edad nº ',cont
		Leer edad
		Mientras edad <= 0 O edad > 122 Hacer
			Escribir "ERROR. Edad Invalida"
			Escribir "Ingrese la edad nº ",cont
			Leer edad
		FinMientras
		Si edad>=18 Entonces
			contMayoresEdad <- contMayoresEdad+1
		FinSi
	FinPara
	porcMayores <- (contMayoresEdad/cantPersonas)*100
	Escribir 'El porcentaje de mayores de edad es ',porcMayores,'%'
FinAlgoritmo
