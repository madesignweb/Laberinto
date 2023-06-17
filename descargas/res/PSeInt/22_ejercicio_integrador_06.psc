Algoritmo ejercicio_integrador_06
	Definir a,b Como Entero
	Definir resultado Como Real
	Definir simbolo Como Caracter
	Escribir 'CALCULADORA'
	Escribir 'Ingrese número A'
	Leer a
	Escribir 'Ingrese número B'
	Leer b
	Escribir 'Elija la operación aritmética:'
	Escribir '[+] Sumar A + B'
	Escribir '[-] Restar A - B'
	Escribir '[x] Multiplicar A x B'
	Escribir '[/] Dividir A / B'
	Leer simbolo
	Segun simbolo  Hacer
		'+':
			Escribir 'Resultado: ',a+b
		'-':
			Escribir 'Resultado: ',a-b
		'x':
			Escribir 'Resultado: ',a*b
		'/':
			Si b==0 Entonces
				Escribir 'No se puede dividir por cero'
			SiNo
				Escribir 'Resultado: ',a/b
			FinSi
		De Otro Modo:
			Escribir 'El símbolo no corresponde a una operación'
	FinSegun
FinAlgoritmo
