Algoritmo ejercicio_integrador_04
	Definir hora,limiteMadrugada,limiteManiana, limiteMediodia, limiteTarde, limiteNoche Como Entero
	limiteMadrugada <- 5
	limiteManiana <- 11
	limiteMediodia <- 13
	limiteTarde <- 19
	limiteNoche <- 23
	Escribir 'Ingrese hora (entre 0 y 23 inclusive)'
	Leer hora
	Si hora>=0 Entonces
		Si hora>limiteMadrugada Entonces
			Si hora>limiteManiana Entonces
				Si hora > limiteMediodia Entonces
					Si hora > limiteTarde Entonces
						Si hora > limiteNoche Entonces
							Escribir hora," supera el máximo (23)"
						SiNo
							Escribir "Es la NOCHE"
						FinSi
					SiNo
						Escribir 'Es la TARDE'
					FinSi
				SiNo
					Escribir "Es el MEDIODÍA"
				FinSi
			SiNo
				Escribir 'Es la MAÑANA'
			FinSi
		SiNo
			Escribir 'Es la MADRUGADA'
		FinSi
	SiNo
		Escribir 'La hora no puede ser negativa'
	FinSi
FinAlgoritmo
