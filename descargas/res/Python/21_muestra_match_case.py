print("MENU DE OPCIONES")
print("[1] Ventas")
print("[2] Soporte")
print("[3] Administración")
opcion = int(input("Elegir opción: "))

match opcion:
	case 1:
		print("VENTAS")
	case 2:
		print("SOPORTE")
	case 3:
		print("ADMINISTRACIÓN")
	case _:
		print("Opción inexistente")

# SIN EL MATCH-CASE
#if opcion==1:
	#print("VENTAS")
#elif opcion==2:
	#print("SOPORTE")
#elif opcion==3:
	#print("ADMINISTRACIÓN")

