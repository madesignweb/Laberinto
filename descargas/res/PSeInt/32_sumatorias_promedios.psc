Algoritmo sumatorias_promedios
	Definir cont,veces,num, sumatoria Como Entero
	sumatoria <- 0
	veces <- 4
	Para cont<-1 Hasta veces Hacer
		Escribir 'Ingrese número ',cont
		Leer num
		sumatoria <- sumatoria + num
	FinPara
	Escribir "La sumatoria de los valores es ",sumatoria
	Escribir "El promedio es ",(sumatoria / veces)
FinAlgoritmo
