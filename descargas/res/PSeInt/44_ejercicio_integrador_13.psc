Algoritmo ejercicio_integrador_13
	Definir ancho,alto, contColumnas, contFilas Como Entero
	Escribir 'Ingrese ancho'
	Leer ancho
	Mientras ancho<=0 Hacer
		Escribir 'ERROR: Debe ser positivo'
		Escribir 'Ingréselo de nuevo'
		Leer ancho
	FinMientras
	Escribir 'Ingrese alto'
	Leer alto
	Mientras alto<=0 Hacer
		Escribir 'ERROR: Debe ser positivo'
		Escribir 'Ingréselo de nuevo'
		Leer alto
	FinMientras
	// Continuamos con un ancho y alto positivos
	Para contFilas<-1 Hasta alto Hacer
		Para contColumnas<-1 Hasta ancho Hacer
			Escribir Sin Saltar "X"
		FinPara
		// Nuevo renglón
		Escribir ""
	FinPara
FinAlgoritmo
