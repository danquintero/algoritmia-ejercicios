Algoritmo AnioBisiesto
	Definir anio Como Entero
	Definir div4, div100, div400, esBisiesto Como Logico
	
	Escribir "Ingrese un año:"
	Leer anio
	
	Si anio <= 0 Entonces
		Escribir "Error: el año debe ser mayor que 0"
	SiNo
		div4 <- (anio MOD 4 = 0)
		div100 <- (anio MOD 100 = 0)
		div400 <- (anio MOD 400 = 0)
		
		esBisiesto <- (div4 Y NO div100) O div400
		
		Si esBisiesto Entonces
			Escribir anio, " es bisiesto (febrero tiene 29 dias)"
		SiNo
			Escribir anio, " no es bisiesto (febrero tiene 28 dias)"
		FinSi
	FinSi
FinAlgoritmo