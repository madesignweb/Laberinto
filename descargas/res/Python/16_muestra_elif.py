x = int(input("Colocá un número entero: "))

if x == 0:
    resultado = "neutro"
elif x > 0:
    resultado = "positivo"
else:
    resultado = "negativo"

print(x,"es",resultado)