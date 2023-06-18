Algoritmo ejercicio_integrador_08_con_validacion
	Definir num,cont Como Entero
	Escribir 'Ingrese número entre 1 y 10'
	Leer num
	Mientras num < 1 O num > 10 Hacer
		Escribir "Error: Vuelva a ingresarlo (entre 1 y 10)"
		Leer num
	FinMientras
	// Validado...
	Para cont<-1 Hasta 10 Hacer
		Escribir num,' x ',cont,' = ',(num*cont)
	FinPara
FinAlgoritmo
