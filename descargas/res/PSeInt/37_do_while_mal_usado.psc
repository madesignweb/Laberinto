Algoritmo do_while_mal_usado
	Definir nombre,valorCorte,nombreMasJoven Como Caracter
	Definir edad,edadMinima Como Entero
	nombreMasJoven <- 'NINGUNO'
	edadMinima <- 200
	valorCorte <- '*'
	Repetir
		Escribir 'Ingrese un nombre (* para cortar)'
		Leer nombre
		// Con el afán de usar Repetir-Mientras estás usando un condicional que repite la misma condición que el ciclo
		Si nombre <> valorCorte Entonces
			Escribir 'Ingrese la edad para ',nombre
			Leer edad
			Si edad<edadMinima Entonces
				nombreMasJoven <- nombre
				edadMinima <- edad
			FinSi
		FinSi
	Mientras Que nombre<>valorCorte
	Si nombreMasJoven<>'NINGUNO' Entonces
		Escribir 'La persona más joven (',edadMinima,') es ',nombreMasJoven
	SiNo
		Escribir 'No se ingresó ninguna persona'
	FinSi
FinAlgoritmo
