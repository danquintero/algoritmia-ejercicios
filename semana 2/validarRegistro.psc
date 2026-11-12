Algoritmo ValidarRegistro
	Definir edad Como Entero
	Definir respuesta Como Caracter
	
	Escribir "¿Cuantos años tienes?"
	Leer edad
	Escribir "¿Aceptas los terminos? (S/N)"
	Leer respuesta
	respuesta <- Mayusculas(respuesta)
	
	Si edad >= 14 Y respuesta = "S" Entonces
		Escribir "Registro exitoso"
	SiNo
		Escribir "No puedes registrarte"
	FinSi
FinAlgoritmo