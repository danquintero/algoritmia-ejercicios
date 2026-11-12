Algoritmo FacturaRestaurante
	Definir subtotal, impuesto, propina Como Real
	subtotal <- LeerPedido()
	impuesto <- CalcularPorcentaje(subtotal, 8)
	propina <- CalcularPorcentaje(subtotal, 10)
	ImprimirFactura(subtotal, impuesto, propina)
FinAlgoritmo

SubProceso subtotal <- LeerPedido()
	Definir subtotal, precio Como Real
	Definir cantidad Como Entero
	subtotal <- 0
	Escribir "Precio del plato (0 para terminar):"
	Leer precio
	Mientras precio <> 0 Hacer
		Escribir "Cantidad:"
		Leer cantidad
		subtotal <- subtotal + precio * cantidad
		Escribir "Precio del plato (0 para terminar):"
		Leer precio
	FinMientras
FinSubProceso

SubProceso valor <- CalcularPorcentaje(base, porcentaje)
	Definir valor Como Real
	valor <- base * porcentaje / 100
FinSubProceso

SubProceso ImprimirFactura(subtotal, impuesto, propina)
	Definir total Como Real
	total <- subtotal + impuesto + propina
	Escribir "------- FACTURA -------"
	Escribir "Subtotal:      $", subtotal
	Escribir "Impuesto 8%:   $", impuesto
	Escribir "Propina 10%:   $", propina
	Escribir "-----------------------"
	Escribir "TOTAL:         $", total
FinSubProceso