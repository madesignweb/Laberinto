Algoritmo validar_entrada_cadenas
	Definir opcion Como Caracter
	Escribir '¿Desea continuar? [S/N]'
	Leer opcion
	// Otra forma: opcion != "S" Y opcion != "s" Y opcion != "N" Y opcion != "n"
	Mientras NO (opcion == "S" O opcion == "s" O opcion == "N" O opcion == "n") Hacer
		Escribir "Opción incorrecta"
		Escribir "¿Desea continuar? [S/N]"
		Leer opcion
	FinMientras
FinAlgoritmo
