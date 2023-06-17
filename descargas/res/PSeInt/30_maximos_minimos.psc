Algoritmo maximos_minimos
	Definir cont,veces,num,maximo, minimo Como Entero
	Definir posMaximo, posMinimo Como Entero
	veces <- 4
	Escribir "Ingrese número 1"
	Leer num
	minimo <- num
	maximo <- num
	posMinimo <- 1
	posMaximo <- 1
	Para cont<-2 Hasta veces Hacer
		Escribir 'Ingrese número ',cont
		Leer num
		Si num>maximo Entonces
			posMaximo <- cont
			maximo <- num
		SiNo
			Si num < minimo Entonces
				posMinimo <- cont
				minimo <- num
			FinSi
		FinSi
	FinPara
	Escribir 'El máximo fue ',maximo," en la posición ",posMaximo
	Escribir "El mínimo fue ",minimo," en la posición ",posMinimo
FinAlgoritmo
