Algoritmo evalucaion
	definir Nomestudiante como caracter
	definir carrera como entero
	definir conFecha como numero
	definir matricula, mensualidad como real
	
	escribir " ***---- instituto superior tecnologico jorge bonilla"
	escribir "	SISTEMA DE PAGOS DE MATRICULAS Y PENSIONES"
	escribir " ingrese nombre del estudiante:"
	leer Nomestudiante
	
	escribir "¿que carrera estudia?"
	escribir "[1] = computaciones e informatica"
	escribir "[2] = secretariado ejecutivo"
	escribir "[3] = administracion"
	escribir "selecione la opcion:" Sin Saltar
	leer carrera
	si (carrera = 1) entonces 
		matricula = 100
		mensualidad = 450
		si (carrera =  2) entonces
		matricula = 250
		mensualidad = 350
		sino
			matricula = 250
		mensualidad = 400
			FinSi
			
	FinSi
	escribir "¿está en el rango permitido?" Sin Saltar
	escribir "(1) = si (0) = no"
	leer confecha
	
	si (conFecha = 1) entonces 
		definir concepto como entero
		escribir "ESTA EN LA FECHA PERMITIDA"
		ESCRIBIR " "
		escribir "La matricula , o la paga con una mensualidad"
		escribir "no se le genera descuento alguno, pero si es que"
		escribir "el estudiande paga la matricula y la acompaña "
		escribir "partir de dos hasta cuatro mensualidades, el sistema "
		escribir "le genera el 5% de descuento en la matricula y el 10% en las pensiones"
		escribir "que concepto deseas pagar?"
		escribir "[1] = matricula y mensualidad"
		escribir "[2] = matricula y mensualidades"
		escribir "[3] = todo el semestre"
		escribir "[4] toda la carrera"
		leer concepto
		finsi 
		SI (concepto = 1)  Entonces
			//condicion 1: pagó matricula o mensualidad no hay descuento
			definir opcionMM Como Entero
			escribir "elige para pagar:"
			escribir "[1] = matricula"
			escribir "[2] = mensualidad"
			leer opcionMM
			si (opcionMM = 1) 
				escribir "entonces usted debe pagar:" matricula
				
				FinSi
				
			FinSi

		si (concepto = 2)
			//condicion 2: pago matricula + 2 hasta 4 mensudalidades 5% de descuento
			escribir "cuantas mensualidades desea pagar?"
			definir nroMensualidades como entero
			leer nroMensualidades 
			si (nromensualidades = 2) y (nromensualidades = 4) Entonces
				definir nromatricula, nromensualidad, montoApagar como real
				nromatricula = matricula * 0.05
				nromensualidad = mensualidad * 0.10
				montoApagar = (matricula + nromatricula) 
				escribir "usted debe pagar:"
			si (concepto = 3) Entonces
				//condicion3: todo un semestre + matricula;
				//descuento del 20% al onto total de pensiones
				//y el 10% a la matricula.
				definir nromatricula, nromensualidad, montoApagar como real
				nromatricula = matricula * 0.10
				nromensualidad = mensualidad * 0.20
				montoApagar = (matricula + nromatricula) 
				escribir "usted debe pagar:"
				finsi
				si (concepto = 3) Entonces
					//condicion3: todo un semestre + matricula;
					//descuento del 40% al onto total de pensiones
					//y el 20% a la matricula.
					definir nromatricula, nromensualidad, montoApagar como real
					nromatricula = matricula * 0.20
					nromensualidad = mensualidad * 0.40
					montoApagar = (matricula + nromatricula) 
					escribir "usted debe pagar:"
					finsi
			FinSi
		
	   sino
		escribir "el estudiante está fuera de la fecha permitida" 
		escribir "si no no está dentro del rango de las fechas de matricula y pago de pensiones (cuotas), el sistema le"
		escribir "genera el 1% de multa por retraso a la mensualidad, de lo contrario se le pueden aplicar las"
		escribir "siguientes condiciones:"
		definir multa como real
		multa = mensualidad * 0.01
		mensualidad = matricula + multa
		escribir " la nueva mensualidad es: " mensualidad
	
	
	FinSi
	
	
	
FinAlgoritmo
