Algoritmo ejercicio_integrador_12
	Definir opcion Como Caracter
	Definir cant,precio, montoTotal Como Entero
	montoTotal <- 0
	Repetir
		Escribir 'Ingrese la cantidad del artículo'
		Leer cant
		Escribir 'Ingrese el precio unitario del artículo'
		Leer precio
		montoTotal <- montoTotal + (precio * cant)
		Escribir '¿Desea ingresar otro artículo? [S/N]'
		Leer opcion
	Mientras Que opcion<>'N' Y opcion<>'n'
	Escribir "El monto del ticket es $",montoTotal
FinAlgoritmo
