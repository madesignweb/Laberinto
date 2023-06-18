numero = int(input("Ingrese un número entre 1 y 10: "))

if numero >= 1 and numero <= 10:
	for c in range(1,11):
		print(numero,"x",c,"=",(numero * c))
else:
	print("No puso un número entre 1 y 10")