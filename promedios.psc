Algoritmo aprueba_reprueba
	escribir "ingrese calificacion 1:"
	leer cal1
	escribir "ingrese calificacion 2:"
	leer cal2
	escribir "ingrese calificacion 3:"
	leer cal3
	prom = (cal1 + cal2 + cal3) /3
	si prom >= 11 Entonces
		escribir "el promedio del alumno es:"  prom "  por lo tanto el alumno aprobó"
	SiNo
		escribir "el promedio del alumno es:" prom "por lo tanto el alumno reprobó"
	FinSi
FinAlgoritmo
