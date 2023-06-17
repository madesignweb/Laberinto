Algoritmo ejercicio_integrador_15
	Definir NOMBRE_ESPERADO,CLAVE_ESPERADA,nombre,clave Como Caracter
	Definir intento Como Entero
	NOMBRE_ESPERADO <- 'Pepe'
	CLAVE_ESPERADA <- '1234'
	Escribir Sin Saltar 'Nombre'
	Leer nombre
	Escribir Sin Saltar 'Clave'
	Leer clave
	intento <- 1
	Mientras (nombre <> NOMBRE_ESPERADO O clave <> CLAVE_ESPERADA) Y intento < 3 Hacer
		Escribir 'ERROR: credenciales incorrectas. Vuelva a ingresarlas'
		Escribir Sin Saltar 'Nombre'
		Leer nombre
		Escribir Sin Saltar 'Clave'
		Leer clave
		intento <- intento + 1
	FinMientras
	Si nombre == NOMBRE_ESPERADO Y clave == CLAVE_ESPERADA Entonces
		Escribir "Acceso concedido"
	SiNo
		Escribir "Cuenta bloqueada"
	FinSi
FinAlgoritmo
