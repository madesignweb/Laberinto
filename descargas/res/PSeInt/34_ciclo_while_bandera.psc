Algoritmo ciclo_while_bandera
	Definir num, umbral, sumatoria, cont Como Entero
	cont <- 0
	sumatoria <- 0
	umbral <- 10
	Mientras sumatoria < umbral Hacer
		Escribir "Ingrese un valor"
		Leer num
		cont <- cont + 1
		sumatoria <- sumatoria + num
	FinMientras
	Escribir "Valor promedio: ",(sumatoria / cont)
FinAlgoritmo
