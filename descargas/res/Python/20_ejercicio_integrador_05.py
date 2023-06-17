edad = int(input("Ingrese su edad: "))
sueldo = int(input("Ingrese su sueldo: "))

if sueldo < 10000:
	porcentaje = 0.5
elif sueldo < 20000:
	porcentaje = 1
elif sueldo < 30000:
	porcentaje = 2
else:
	porcentaje = 2.5

aporte = sueldo * (porcentaje / 100)

if edad <= 30:
	aporte = aporte + aporte * 0.2

print("El monto del aporte es U$D",aporte)