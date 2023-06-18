Algoritmo ejercicio_integrador_09
	Definir cantPersonas,edad,cont,contMayoresEdad Como Entero
	Definir porcMayores Como Real
	contMayoresEdad <- 0
	Escribir 'Ingrese una cantidad de personas'
	Leer cantPersonas // Validar que sea mayor que cero
	Para cont<-1 Hasta cantPersonas Hacer
		Escribir 'Ingrese la edad nº ',cont
		Leer edad
		Si edad>=18 Entonces
			contMayoresEdad <- contMayoresEdad+1
		FinSi
	FinPara
	porcMayores <- (contMayoresEdad/cantPersonas)*100
	Escribir 'El porcentaje de mayores de edad es ',porcMayores,'%'
FinAlgoritmo
