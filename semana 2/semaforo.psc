Algoritmo Semaforo
	Definir unidades Como Entero
	
	Escribir "Ingrese las unidades en inventario:"
	Leer unidades
	
	Si unidades < 0 Entonces
		Escribir "Error: las unidades no pueden ser negativas"
	SiNo
		Si unidades = 0 Entonces
			Escribir "ROJO: producto agotado"
		SiNo
			Si unidades <= 10 Entonces
				Escribir "AMARILLO: hay que pedir"
			SiNo
				Escribir "VERDE: todo bien"
			FinSi
		FinSi
	FinSi
FinAlgoritmo