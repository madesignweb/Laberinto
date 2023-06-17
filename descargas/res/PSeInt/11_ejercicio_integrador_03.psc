Algoritmo ejercicio_integrador_03
	Definir monto Como Entero
	Definir cant100,cant50,cant20,cant10,cant5,cant2 Como Entero
	Escribir 'Ingrese un monto (en dólares)'
	Leer monto
	cant100 <- trunc(monto/100)
	monto <- monto MOD 100
	cant50 <- trunc(monto/50)
	monto <- monto MOD 50
	cant20 <- trunc(monto/20)
	monto <- monto MOD 20
	cant10 <- trunc(monto/10)
	monto <- monto MOD 10
	cant5 <- trunc(monto/5)
	monto <- monto MOD 5
	cant2 <- trunc(monto/2)
	monto <- monto MOD 2
	Escribir cant100,' billetes de U$S 100'
	Escribir cant50,' billetes de U$S 50'
	Escribir cant20,' billetes de U$S 20'
	Escribir cant10,' billetes de U$S 10'
	Escribir cant5,' billetes de U$S 5'
	Escribir cant2,' billetes de U$S 2'
	Escribir monto,' billetes de US$ 1'
FinAlgoritmo
