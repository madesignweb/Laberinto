Algoritmo ciclo_contador_y_bandera
	Definir sueldoAnual,sueldoMensual,contMeses Como Entero
	sueldoAnual <- 0
	contMeses <- 1
	Escribir 'Ingrese sueldo del mes ',contMeses
	Leer sueldoMensual
	Mientras contMeses<12 Y sueldoMensual>0 Hacer
		sueldoAnual <- sueldoAnual+sueldoMensual
		contMeses <- contMeses+1
		Escribir 'Ingrese sueldo del mes ',contMeses
		Leer sueldoMensual
	FinMientras
	Si sueldoMensual > 0 Entonces
		sueldoAnual <- sueldoAnual+sueldoMensual
	FinSi
	Escribir 'Tu sueldo anual es de $',sueldoAnual
FinAlgoritmo
