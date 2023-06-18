Algoritmo examen_integrador
	Definir EFECTIVO,CREDITO,DEBITO Como Caracter
	Definir MAX_MESAS,MIN_CUOTAS,MAX_CUOTAS,MIN_COMENSALES,MAX_COMENSALES,COSTO_MENU Como Entero
	Definir RECARGO_DEBITO, RECARGO_CREDITO_POR_CUOTA, RECARGO_CREDITO_MAX Como Real
	Definir cont,cantComensales,cantCuotas, costo, contEfectivo, contDebito, contCredito, mdp_mayor_cant Como Entero
	Definir recargo, recaudacionTotal Como Real
	Definir medioDePago, mdp_mayor Como Caracter
	EFECTIVO <- 'EFE'
	CREDITO <- 'CRE'
	DEBITO <- 'DEB'
	MAX_MESAS <- 8
	MIN_CUOTAS <- 1
	MAX_CUOTAS <- 12
	MIN_COMENSALES <- 1
	MAX_COMENSALES <- 4
	COSTO_MENU <- 2000
	RECARGO_DEBITO <- 0.03
	RECARGO_CREDITO_POR_CUOTA <- 0.025
	RECARGO_CREDITO_MAX <- 0.2
	recaudacionTotal <- 0
	contEfectivo <- 0
	contDebito <- 0
	contCredito <- 0
	Para cont<-1 Hasta MAX_MESAS Hacer
		Escribir 'Mesa nº ',cont
		Escribir 'Cantidad de comensales:'
		Leer cantComensales
		Mientras cantComensales<MIN_COMENSALES O cantComensales>MAX_COMENSALES Hacer
			Escribir 'ERROR. Cantidad de comensales:'
			Leer cantComensales
		FinMientras
		Escribir 'Medio de pago (',EFECTIVO,', ',DEBITO,', ',CREDITO,'):'
		Leer medioDePago
		Mientras  NO (medioDePago==EFECTIVO O medioDePago==DEBITO O medioDePago==CREDITO) Hacer
			Escribir 'ERROR. Medio de pago (',EFECTIVO,', ',DEBITO,', ',CREDITO,'):'
			Leer medioDePago
		FinMientras
		Si medioDePago == CREDITO Entonces
			Escribir 'Cantidad de cuotas:'
			Leer cantCuotas
			Mientras cantCuotas<MIN_CUOTAS O cantCuotas>MAX_CUOTAS Hacer
				Escribir 'ERROR. Cantidad de cuotas:'
				Leer cantCuotas
			FinMientras
		FinSi
		// Proceso...
		costo <- cantComensales * COSTO_MENU
		Segun medioDePago Hacer
			EFECTIVO:
				contEfectivo <- contEfectivo + 1
			DEBITO:
				costo <- costo + costo * RECARGO_DEBITO
				contDebito <- contDebito + 1
			CREDITO:
				contCredito <- contCredito + 1
				recargo <- cantCuotas * RECARGO_CREDITO_POR_CUOTA
				Si recargo > RECARGO_CREDITO_MAX Entonces
					recargo <- RECARGO_CREDITO_MAX
				FinSi
				costo <- costo + costo * recargo				
		FinSegun
		recaudacionTotal <- recaudacionTotal + costo
	FinPara
	Si contEfectivo > contDebito Y contEfectivo > contCredito Entonces
		mdp_mayor <- EFECTIVO
		mdp_mayor_cant <- contEfectivo
	SiNo
		Si contDebito > contCredito Entonces
			mdp_mayor <- DEBITO
			mdp_mayor_cant <- contDebito
		SiNo
			mdp_mayor <- CREDITO
			mdp_mayor_cant <- contCredito
		FinSi
	FinSi
	Escribir "La recaudación total del restaurant fue de ", recaudacionTotal
	Escribir "El medio de pago más utilizado fue ",mdp_mayor," (se usó ",mdp_mayor_cant," veces)"
FinAlgoritmo
