Algoritmo propinas
    Definir totalCuenta, propina, total, cadaUno Como Real
    Definir personas Como Entero

    Escribir "Ingresa el total de la cuenta: "
    Leer totalCuenta

    Escribir "Ingresa el número de personas: "
    Leer personas

    propina <- totalCuenta * 0.10
    total <- totalCuenta + propina
    cadaUno <- total / personas

    Escribir "Cada uno debe pagar: $", cadaUno
FinAlgoritmo
 
 
