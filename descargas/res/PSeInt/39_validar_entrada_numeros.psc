Algoritmo validar_entrada_numeros
	Definir num,min,max Como Entero
	min <- 1
	max <- 10
	Escribir 'Ingrese número entre ',min,' y ',max
	Leer num
	// Otra forma: NO (num >= min Y num <= max)
	Mientras num < min O num > max Hacer
		Escribir 'ERROR. Ingrese número entre ',min,' y ',max
		Leer num
	FinMientras
FinAlgoritmo
