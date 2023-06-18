LIMITE_INFERIOR = 0
LIMITE_MADRUGADA = 5
LIMITE_MANIANA = 11
LIMITE_MEDIODIA = 13
LIMITE_TARDE = 19
LIMITE_SUPERIOR = 23

hora = int(input("Ingrese un horario entre "+str(LIMITE_INFERIOR)+" y "+str(LIMITE_SUPERIOR)+": "))

if hora < LIMITE_INFERIOR:
	print("La hora no puede ser negativa")
elif hora > LIMITE_SUPERIOR: 
	print("La hora no puede ser mayor que",LIMITE_SUPERIOR)
elif hora <= LIMITE_MADRUGADA:
	print("Es la MADRUGADA")
elif hora <= LIMITE_MANIANA:
	print("Es la MAÑANA")
elif hora <= LIMITE_MEDIODIA:
	print("Es el MEDIODÍA")
elif hora <= LIMITE_TARDE:
	print("Es la TARDE")
else:
	print("Es la NOCHE")