Algoritmo ejercicio_integrador_05
	Definir edad,salario Como Entero
	Definir aporte, porcentaje Como Real
	Escribir 'Ingrese su edad'
	Leer edad
	Escribir 'Ingrese su salario anual en USD'
	Leer salario
	Si salario<10000 Entonces
		porcentaje <- 0.5
	SiNo
		Si salario<20000 Entonces
			porcentaje <- 1
		SiNo
			Si salario < 30000 Entonces
				porcentaje <- 2
			SiNo
				porcentaje <- 2.5
			FinSi
		FinSi
	FinSi
	aporte <- salario * porcentaje / 100
	Si edad <= 30 Entonces
		aporte <- aporte + aporte * 20 / 100
	FinSi
	Escribir "El monto del aporte es de ",aporte
FinAlgoritmo
