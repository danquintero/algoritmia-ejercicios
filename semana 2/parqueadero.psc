Algoritmo Parqueadero
	Definir tipo, minutos, horas Como Entero
	Definir tarifa, valor Como Real
	Definir factura Como Caracter
	
	Escribir "Tipo de vehiculo (1 = carro, 2 = moto):"
	Leer tipo
	Escribir "Minutos de permanencia:"
	Leer minutos
	Escribir "¿Tiene factura de compra? (S/N)"
	Leer factura
	factura <- Mayusculas(factura)
	
	Si minutos < 0 Entonces
		Escribir "Error: los minutos no pueden ser negativos"
	SiNo
		Segun tipo Hacer
			1:
				tarifa <- 4000
			2:
				tarifa <- 2000
			De Otro Modo:
				tarifa <- 0
		FinSegun
		
		Si tarifa = 0 Entonces
			Escribir "Error: tipo de vehiculo no valido"
		SiNo
			Si minutos <= 15 Entonces
				valor <- 0
			SiNo
				// Redondea hacia arriba: cada fraccion cuenta como hora completa
				horas <- trunc((minutos + 59) / 60)
				valor <- horas * tarifa
				
				// Primero el tope...
				Si valor > 30000 Entonces
					valor <- 30000
				FinSi
				
				// ...despues el descuento
				Si factura = "S" Entonces
					valor <- valor / 2
				FinSi
			FinSi
			Escribir "Horas cobradas: ", horas
			Escribir "Valor a pagar: $", valor
		FinSi
	FinSi
FinAlgoritmo