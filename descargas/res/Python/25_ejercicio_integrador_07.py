numero = int(input("Ingrese un número positivo: "))

if numero > 0:
	if numero % 2 != 0:
		numero = numero - 1
	cont = numero
	while cont >= 0:
		print(str(cont) + " ", end="")
		cont = cont - 2
else:
	print("El número debía ser positivo")