Algoritmo Cobro_de_estacionamiento
	Definir horaentrada, minutoentrada, horasalida, minutosalida Como Entero
	Definir totalHoras, totalMinutos, minutostotalesdelacuenta Como Entero
	Definir totalcobro Como Entero
	
	//entrada de datos//
	Escribir "Ingrese la hora de entrada (formato 24 horas)"
	Leer horaentrada
	Escribir "Ingrese los minutos de entrada (forma de 0 - 59)"
	Leer minutoentrada
	
	Escribir "Ingrese la hora de salida (formato 24 horas)"
	Leer horasalida
	Escribir "Ingrese los minutos de esalida (forma de 0 - 59)"
	Leer minutosalida
	
	//procesos//
	//calcular el timepo total en minutos//
	totalHoras = horasalida - horaentrada
	totalMinutos = minutosalida - minutoentrada
	
	//tengo que empezar a evaluar los casos//
	//si lo sminutos de salida son menores a los de entrada//
	//hay que ajustar la hora y minutos de salida//
	Si totalMinutos < 0 Entonces
		totalMinutos = totalMinutos + 60
		//totalMinutos += 60 //
		totalHoras = totalHoras - 1
	Fin Si
	
	//convertir todo a mintos//
	totalMinutos = (totalHoras * 60) + totalMinutos
	
	//vamos a caluclar el cobro//
	totalcobro = 0
	
	//calcular el cobro por la hora completa//
	si totalMinutos >= 60  Entonces
		totalcobro = totalcobro + (totalMinutos/60)*15
	FinSi
	
	//calcular el cobro de cada fracción
	
FinAlgoritmo
