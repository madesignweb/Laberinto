a = int(input("Ingrese el primer número: "))
b = int(input("Ingrese el segundo número: "))
print("[+] Sumar A + B")
print("[-] Restar A - B")
print("[x] Multiplicar A x B")
print("[/] Dividir A / B")
simbolo = input("Ingrese la operación: ")

match simbolo:
	case "+":
		print("Resultado:",(a + b))
	case "-":
		print("Resultado:",(a - b))
	case "x":
		print("Resultado:",(a * b))
	case "/":
		if b != 0:
			print("Resultado:",(a / b))
		else:
			print("No se peude dividir por cero")
	case _:
		print("Operación inválida")
		