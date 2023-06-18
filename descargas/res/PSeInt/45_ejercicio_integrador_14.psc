Algoritmo ejercicio_integrador_14
	Definir base,contFilas,contColumnas,contEspacios,espaciosIniciales Como Entero
	Escribir 'Coloque el número de base para el arbolito'
	Leer base
	Mientras base<3 O base MOD 2==0 Hacer
		Escribir 'ERROR: Se espera un número impar mayor o igual que 3'
		Escribir 'Ingrese nuevamente la base:'
		Leer base
	FinMientras
	espaciosIniciales <- trunc(base/2)
	Para contFilas<-1 Hasta base Con Paso 2 Hacer
		// Imprimir línea de espacios
		Para contEspacios<-1 Hasta espaciosIniciales Hacer
			Escribir ' ' Sin Saltar
		FinPara
		espaciosIniciales <- espaciosIniciales-1
		// Imprimiendo línea de asteriscos
		Para contColumnas<-1 Hasta contFilas Hacer
			Escribir '*' Sin Saltar
		FinPara
		// Salto de línea
		Escribir ''
	FinPara
FinAlgoritmo
