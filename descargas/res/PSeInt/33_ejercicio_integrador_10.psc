Algoritmo ejercicio_integrador_10
	Definir num, cont, fact Como Entero
	fact <- 1
	Escribir "Ingrese un n�mero natural"
	Leer num
	Si num > 0 Entonces
		Para cont<-1 Hasta num Hacer
			fact <- fact * cont
		FinPara
		Escribir "El factorial de ",num," es ",fact
	SiNo
		Escribir "No se ingres� un n�mero natural"
	FinSi
FinAlgoritmo
