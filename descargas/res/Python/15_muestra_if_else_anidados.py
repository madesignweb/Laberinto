x = int(input("Colocá un número entero: "))

if x != 0:
    if x > 0:
        resultado = "positivo"
    else:
        resultado = "negativo"
else:
    resultado = "neutro"

print(x,"es",resultado)