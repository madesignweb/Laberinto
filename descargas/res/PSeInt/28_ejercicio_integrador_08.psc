Algoritmo ejercicio_integrador_08
	Definir num, cont Como Entero
	Escribir 'Ingrese n�mero entre 1 y 10'
	Leer num
	Si num>=1 Y num<=10 Entonces
		Para cont<-1 Hasta 10 Hacer
			Escribir num," x ",cont," = ",(num * cont)
		FinPara
	SiNo
		Escribir 'ERROR: No est� entre 1 y 10'
	FinSi
FinAlgoritmo
