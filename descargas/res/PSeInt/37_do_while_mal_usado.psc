Algoritmo do_while_mal_usado
	Definir nombre,valorCorte,nombreMasJoven Como Caracter
	Definir edad,edadMinima Como Entero
	nombreMasJoven <- 'NINGUNO'
	edadMinima <- 200
	valorCorte <- '*'
	Repetir
		Escribir 'Ingrese un nombre (* para cortar)'
		Leer nombre
		// Con el af�n de usar Repetir-Mientras est�s usando un condicional que repite la misma condici�n que el ciclo
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
		Escribir 'La persona m�s joven (',edadMinima,') es ',nombreMasJoven
	SiNo
		Escribir 'No se ingres� ninguna persona'
	FinSi
FinAlgoritmo
