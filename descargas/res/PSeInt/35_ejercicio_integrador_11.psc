Algoritmo ejercicio_integrador_11
	Definir nombre,valorCorte Como Cadena
	Definir edad, edadMinima Como Entero
	//nombreMasJoven <- "NINGUNO"
	edadMinima <- 200
	valorCorte <- '*'
	Escribir 'Ingrese un nombre (* para cortar)'
	Leer nombre
	Mientras nombre<>valorCorte Hacer
		Escribir 'Ingrese la edad para ',nombre
		Leer edad
		Si edad < edadMinima Entonces
			nombreMasJoven <- nombre
			edadMinima <- edad
		FinSi
		Escribir 'Ingrese otro nombre (* para cortar)'
		Leer nombre
	FinMientras
	// En el video la condici�n era esta: Si nombreMasJoven <> "NINGUNO" Entonces
	// Pero podr�a suceder que una persona se llame "NINGUNO" y nos de un resultado inv�lido
	// Mejor preguntar si la variable edadMinima qued� con su valor original tras el ciclo
	Si edadMinima < 200 Entonces
		Escribir "La persona m�s joven (",edadMinima,") es ",nombreMasJoven
	SiNo
		Escribir "No se ingres� ninguna persona"
	FinSi
FinAlgoritmo
