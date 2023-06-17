// Desarrollar un programa que permita ingresar el ancho y el largo de
// un terreno (en metros) y el precio del metro cuadrado de tierra.
// La computadora debe calcular y mostrar el precio del terreno y la 
// cantidad de metros de alambre que habría que comprar para cercarlo
// en tres pasadas.
Algoritmo ejercicio_integrador_02
	Definir ancho,alto,superficie,perimetro,cantPasadas,cantAlambre Como Entero
	Definir precioM2,precioTerreno Como Real
	Escribir 'Ingrese alto del terreno (en metros)'
	Leer alto
	Escribir 'Ingrese ancho del terreno (en metros)'
	Leer ancho
	Escribir 'Ingrese el precio del m2 de tierra'
	Leer precioM2
	cantPasadas <- 3
	superficie <- alto*ancho
	perimetro <- (2*ancho)+(2*alto)
	precioTerreno <- superficie*precioM2
	cantAlambre <- perimetro*cantPasadas
	Escribir 'El precio del terreno es ',precioTerreno
	Escribir "Cantidad de alambre necesaria (",cantPasadas," pasadas): ",cantAlambre,"m"
FinAlgoritmo
