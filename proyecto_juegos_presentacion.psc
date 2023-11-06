//###################################################INICIO DE LAS FUNCIONES DAMAS ######################################################
//########################################################################################################################################
Funcion movimientosA ( tablero por referencia, contadorA por referencia,apuntador por referencia )
	//
	//**PARTE MOVIMIENTOS PARA A**
	// 
	//EL APUNTADOR HACE REFERENCIA A seguirJugando En tal caso de que al elegir la ficha aprete 0 el programa saldra 
	//y dira cuantas fichas ha comida cada uno 
	definir i,j,ficha,pasa Como Entero
	definir opc,mov,aux,pausa como caracter
	pasa<-1
	Repetir
		escribir "Ingrese la ficha que desea mover"
		leer opc
		Si opc='1' O opc='2' O opc='3' O opc='4' O opc='5' O opc='6' O opc='7' O opc='8' O opc='9' O opc='10' O opc='11' O opc='12' Entonces
			Si opc='1' O opc='2' O opc='3' O opc='4' O opc='5' O opc='6' O opc='7' O opc='8' O opc='9' Entonces
				opc<-'A0'+opc
			SiNo
				Si opc='10' O opc='11' O opc='12' Entonces
					opc<-'A'+opc
					
				Fin Si
			Fin Si
			Para i<-2 Hasta 16 Con Paso 2 Hacer
				Para j<-2 Hasta 16 Con Paso 2 Hacer
					Si opc=tablero[i,j] Entonces
						escribir "Ingrese la direccion hacia donde desea mover "
						escribir "Teniendo en cuenta :"
						escribir "W(diagonal arriba derecha)"
						escribir "S (diagonal abajo derecha)"
						escribir "A(diagonal abajo izquierda)"
						escribir "Q (diagonal arriba izquierda)"
						leer mov
						Segun mov Hacer
							'w','W':
								Si i-2>=2 Entonces
										Si j+2<16 Entonces
											Si tablero[i-2,j+2] = '   ' Entonces
												//se fija que tenga opcion vacio y si lo tiene , simplemente avanza
												aux<-tablero[i-2,j+2]
												tablero[i-2,j+2]<-tablero[i,j]
												tablero[i,j]<-aux
												ficha<-ficha+1
											SiNo
												//Si es ficha contraria la come
												Si tablero[i-2,j+2]='B01' O tablero[i-2,j+2]='B02' O tablero[i-2,j+2]='B03' O tablero[i-2,j+2]='B04' O tablero[i-2,j+2]='B05' O tablero[i-2,j+2]='B06' O tablero[i-2,j+2]='B07' O tablero[i-2,j+2]='B08' O tablero[i-2,j+2]='B09' O tablero[i-2,j+2]='B10' O tablero[i-2,j+2]='B11' O tablero[i-2,j+2]='B12' Entonces
													//Si en el casillero siguiente a la ficha contraria esta vacio...
													Si tablero[i-4,j+4]='   ' Entonces
														aux<-tablero[i-4,j+4]
														tablero[i-4,j+4]<-tablero[i,j]
														tablero[i,j]<-aux
														tablero[i-2,j+2]<-'   '
														contadorA<-contadorA+1//La funcion de este contador es contar CUANTAS fichas contrarias me voy comiendo
														ficha<-ficha+1
													SiNo//Si hay otra ficha no la puede comer
													escribir "No se puede realizar este movimiento"
													
												Fin Si
												
											SiNo
												escribir "No se puede realizar este movimiento"
												
											Fin Si
										Fin Si
									SiNo
										Si j+2=16 Entonces
											Si tablero[i-2,j+2]='   ' Entonces
												aux<-tablero[i-2,j+2]
												tablero[i-2,j+2]<-tablero[i,j]
												tablero[i,j]<-aux
												ficha<-ficha+1
											SiNo
												//Si no es un compañero lo come y avanza al otro casillero
												Si tablero[i-2,j+2]='B01' O tablero[i-2,j+2]='B02' O tablero[i-2,j+2]='B03' O tablero[i-2,j+2]='B04' O tablero[i-2,j+2]='B05' O tablero[i-2,j+2]='B06' O tablero[i-2,j+2]='B07' O tablero[i-2,j+2]='B08' O tablero[i-2,j+2]='B09' O tablero[i-2,j+2]='B10' O tablero[i-2,j+2]='B11' O tablero[i-2,j+2]='B12' Entonces
													
													Si tablero[i-4,j]='   ' Entonces
														aux<-tablero[i-4,j]
														tablero[i-4,j]<-tablero[i,j]
														tablero[i,j]<-aux
														tablero[i-2,j+2]<-'   '
														contadorA<-contadorA+1
														ficha<-ficha+1
													SiNo
														escribir "No se puede realizar este movimiento"
														
													Fin Si
													
												FinSi
												
											Fin Si
										SiNo
											escribir "No se puede realizar este movimiento"
											
										Fin Si
									Fin Si
								SiNo
									escribir "No se puede realizar este movimiento"
								Fin Si
									
							
						's','S':
							Si i+2<=16 Entonces
								Si j+2<16 Entonces
									Si tablero[i+2,j+2]='   ' Entonces
										aux<-tablero[i+2,j+2]
										tablero[i+2,j+2]<-tablero[i,j]
										tablero[i,j]<-aux
										ficha<-ficha+1
									SiNo//si hay una ficha contraria lo come 
									Si tablero[i+2,j+2]='B01' O tablero[i+2,j+2]='B02' O tablero[i+2,j+2]='B03' O tablero[i+2,j+2]='B04' O tablero[i+2,j+2]='B05' O tablero[i+2,j+2]='B06' O tablero[i+2,j+2]='B07' O tablero[i+2,j+2]='B08' O tablero[i+2,j+2]='B09' O tablero[i+2,j+2]='B10' O tablero[i+2,j+2]='B11' O tablero[i+2,j+2]='B12' Entonces
										Si tablero[i+4,j+4]='   ' Entonces
											aux<-tablero[i+4,j+4]
											tablero[i+4,j+4]<-tablero[i,j]
											tablero[i,j]<-aux
											tablero[i+2,j+2]<-'   '
											contadorA<-contadorA+1
											ficha<-ficha+1
										SiNo
											escribir "No se puede realizar este movimiento"
											
										Fin Si
										
									SiNo
										escribir "no se puede realizar este movimiento"
										
									Fin Si
								Fin Si
							SiNo
								Si j+2=16 Entonces//Si no hay ficha contraria simplemente avanza
									Si tablero[i+2,j+2]='   ' Entonces
										aux<-tablero[i+2,j+2]
										tablero[i+2,j+2]<-tablero[i,j]
										tablero[i,j]<-aux
										ficha<-ficha+1
									SiNo
										Si tablero[i+2,j+2]='B01' O tablero[i+2,j+2]='B02' O tablero[i+2,j+2]='B03' O tablero[i+2,j+2]='B04' O tablero[i+2,j+2]='B05' O tablero[i+2,j+2]='B06' O tablero[i+2,j+2]='B07' O tablero[i+2,j+2]='B08' O tablero[i+2,j+2]='B09' O tablero[i+2,j+2]='B10' O tablero[i+2,j+2]='B11' O tablero[i+2,j+2]='B12' Entonces
											Si tablero[i+4,j]='   ' Entonces
												aux<-tablero[i+4,j]
												tablero[i+4,j]<-tablero[i,j]
												tablero[i,j]<-aux
												tablero[i+2,j+2]<-'   '
												contadorA<-contadorA+1
												ficha<-ficha+1
											SiNo
												escribir "No se puede realizar este movimiento"
												
												Limpiar Pantalla
											Fin Si
											
										SiNo
											escribir "No se puede realizar este movimeinto"
											
										Fin Si
									Fin Si
								SiNo
									escribir "No se puede realizar este movimiento"
									
								Fin Si
							Fin Si
							SiNo
								escribir "No se puede realizar este movimiento"
							Fin Si
							
					'A','a':
						Si i+2<=16 Entonces
							Si j-2>2 Entonces
								Si tablero[i+2,j-2]='   ' Entonces
									aux<-tablero[i+2,j-2]
									tablero[i+2,j-2]<-tablero[i,j]
									tablero[i,j]<-aux
									ficha<-ficha+1
								SiNo
									Si tablero[i+2,j-2]='B01' O tablero[i+2,j-2]='B02' O tablero[i+2,j-2]='B03' O tablero[i+2,j-2]='B04' O tablero[i+2,j-2]='B05' O tablero[i+2,j-2]='B06' O tablero[i+2,j-2]='B07' O tablero[i+2,j-2]='B08' O tablero[i+2,j-2]='B09' O tablero[i+2,j-2]='B10' O tablero[i+2,j-2]='B11' O tablero[i+2,j-2]='B12' Entonces
										Si tablero[i+4,j-4]='   ' Entonces
											aux<-tablero[i+4,j-4]
											tablero[i+4,j-4]<-tablero[i,j]
											tablero[i,j]<-aux
											tablero[i+2,j-2]<-'   '
											contadorA<-contadorA+1
											ficha<-ficha+1
										SiNo
											escribir "No se puede realizar este movimiento"
											
										Fin Si
									SiNo
										escribir "No se puede realizar este movimiento"
										
									Fin Si
								Fin Si
							SiNo
								Si j-2=2 Entonces
									Si tablero[i+2,j-2]='   ' Entonces
										aux<-tablero[i+2,j-2]
										tablero[i+2,j-2]<-tablero[i,j]
										tablero[i,j]<-aux
										ficha<-ficha+1
									SiNo
										Si tablero[i+2,j-2]='B01' O tablero[i+2,j-2]='B02' O tablero[i+2,j-2]='B03' O tablero[i+2,j-2]='B04' O tablero[i+2,j-2]='B05' O tablero[i+2,j-2]='B06' O tablero[i+2,j-2]='B07' O tablero[i+2,j-2]='B08' O tablero[i+2,j-2]='B09' O tablero[i+2,j-2]='B10' O tablero[i+2,j-2]='B11' O tablero[i+2,j-2]='B12' Entonces
											Si tablero[i+4,j]='   ' Entonces
												aux<-tablero[i+4,j]
												tablero[i+4,j]<-tablero[i,j]
												tablero[i,j]<-aux
												tablero[i+2,j-2]<-'   '
												contadorA<-contadorA+1
												ficha<-ficha+1
											SiNo
												escribir "No se puede realizar este movimiento"
											Fin Si
										SiNo
											escribir "No se puede realizar este movimiento"
										Fin Si
									Fin Si
								SiNo
									escribir "No se puede realizar este movimiento"
								Fin Si
							Fin Si
						SiNo
							escribir "No se puede realizar este movimiento"
						Fin Si
						
					'q','Q':
						Si i-2>=2 Entonces
							Si j-2>2 Entonces
								Si tablero[i-2,j-2]='   ' Entonces
									aux<-tablero[i-2,j-2]
									tablero[i-2,j-2]<-tablero[i,j]
									tablero[i,j]<-aux
									ficha<-ficha+1
								SiNo
									Si tablero[i-2,j-2]='B01' O tablero[i-2,j-2]='B02' O tablero[i-2,j-2]='B03' O tablero[i-2,j-2]='B04' O tablero[i-2,j-2]='B05' O tablero[i-2,j-2]='B06' O tablero[i-2,j-2]='B07' O tablero[i-2,j-2]='B08' O tablero[i-2,j-2]='B09' O tablero[i-2,j-2]='B10' O tablero[i-2,j-2]='B11' O tablero[i-2,j-2]='B12' Entonces
										Si tablero[i-4,j-4]='   ' Entonces
											aux<-tablero[i-4,j-4]
											tablero[i-4,j-4]<-tablero[i,j]
											tablero[i,j]<-aux
											tablero[i-2,j-2]<-'   '
											contadorA<-contadorA+1
											ficha<-ficha+1
										SiNo
											escribir "No se puede realizar este movimiento"
										Fin Si
									SiNo
										escribir "No se puede realizar este movimiento"
									Fin Si
								Fin Si
							SiNo
								Si j-2=2 Entonces
									Si tablero[i-2,j-2]='   ' Entonces
										aux<-tablero[i-2,j-2]
										tablero[i-2,j-2]<-tablero[i,j]
										tablero[i,j]<-aux
										ficha<-ficha+1
									SiNo
										Si tablero[i-2,j-2]='B01' O tablero[i-2,j-2]='B02' O tablero[i-2,j-2]='B03' O tablero[i-2,j-2]='B04' O tablero[i-2,j-2]='B05' O tablero[i-2,j-2]='B06' O tablero[i-2,j-2]='B07' O tablero[i-2,j-2]='B08' O tablero[i-2,j-2]='B09' O tablero[i-2,j-2]='B10' O tablero[i-2,j-2]='B11' O tablero[i-2,j-2]='B12' Entonces
											Si tablero[i-4,j]='   ' Entonces
												aux<-tablero[i-4,j]
												tablero[i-4,j]<-tablero[i,j]
												tablero[i,j]<-aux
												tablero[i-2,j-2]<-'   '
												contadorA<-contadorA+1
												ficha<-ficha+1
											SiNo
												escribir "No se puede realizar este movimiento"
											Fin Si
										SiNo
											escribir "No se puede realizar este movimiento"
										Fin Si
									Fin Si
								SiNo
									escribir "No se puede realizar este movimiento"
								Fin Si
							Fin Si
						SiNo
							escribir "No se puede realizar este movimiento"
						Fin Si
						
				Fin Segun
				i<-19
				j<-19
				pasa<-13//pasa HACE REFERENCIA A QUE SI LA FICHA FUE SELECCIONADA CORRECTAMENTE , Y SI LA FICHA FUE ENCONTRADA EN EL TABLERO SE LE DA EL VALOR 13 
			Fin Si
		Fin Para
	Fin Para
	Si pasa<>13 Entonces//EN CASO DE QUE pasa NO TENGA EL VALOR 13 , SIGNIFICA QUE LA FICHA FUE BIEN SELECCIONADA , PERO QUE YA NO SE ENCUENTRA EN EL TABLERO
		escribir "ESA FICHA YA FUE ELIMINADA"
	Fin Si
	
SiNo
	Si opc='0' Entonces
		escribir "Ud ha decidido salir del juego"
		escribir "Presione cualquier tecla para continuar..."
		Esperar Tecla
		ficha<-ficha+1
		apuntador<-apuntador+1
	SiNo
		escribir "FICHA INCORRECTA,INTENTE NUEVAMENTE"
		Esperar 1 Segundos
	Fin Si
	
Fin Si

Hasta Que ficha=1	
Fin Funcion

//***********************************************************************************************
//**************************************** FIN FUNCION  A **************************************
//***********************************************************************************************

Funcion movimientosB ( tablero por referencia, contadorB por referencia,apuntador por referencia )
	//
	//**PARTE MOVIMIENTOS PARA BBBB**
	// 
	definir i,j,ficha,pasa Como Entero
	definir opc,mov,aux,pausa como caracter
	pasa<-1
	Repetir
		escribir "Ingrese la ficha que desea mover"
		leer opc
		Si opc='1' O opc='2' O opc='3' O opc='4' O opc='5' O opc='6' O opc='7' O opc='8' O opc='9' O opc='10' O opc='11' O opc='12' Entonces
			Si opc='1' O opc='2' O opc='3' O opc='4' O opc='5' O opc='6' O opc='7' O opc='8' O opc='9' Entonces
				opc<-'B0'+opc
			SiNo
				Si opc='10' O opc='11' O opc='12' Entonces
					opc<-'B'+opc
					
				Fin Si
			Fin Si
			Para i<-2 Hasta 16 Con Paso 2 Hacer
				Para j<-2 Hasta 16 Con Paso 2 Hacer
					Si opc=tablero[i,j] Entonces
						escribir "Ingrese la direccion hacia donde desea mover "
						escribir "Teniendo en cuenta :"
						escribir "O (diagonal arriba derecha)"
						escribir "L (diagonal abajo derecha)"
						escribir "K(diagonal abajo izquierda)"
						escribir "I (diagonal arriba izquierda)"
						leer mov
						Segun mov Hacer
							'o','O':
								Si i-2>=2 Entonces
									Si j+2<16 Entonces
										Si tablero[i-2,j+2] = '   ' Entonces
											//se fija que tenga opcion vacio y si lo tiene , simplemente avanza
											aux<-tablero[i-2,j+2]
											tablero[i-2,j+2]<-tablero[i,j]
											tablero[i,j]<-aux
											ficha<-ficha+1
										SiNo
											//Si es ficha contraria la come
											Si tablero[i-2,j+2]='A01' O tablero[i-2,j+2]='A02' O tablero[i-2,j+2]='A03' O tablero[i-2,j+2]='A04' O tablero[i-2,j+2]='A05' O tablero[i-2,j+2]='A06' O tablero[i-2,j+2]='A07' O tablero[i-2,j+2]='A08' O tablero[i-2,j+2]='A09' O tablero[i-2,j+2]='A10' O tablero[i-2,j+2]='A11' O tablero[i-2,j+2]='A12' Entonces
												//Si en el casillero siguiente a la ficha contraria esta vacio...
												Si tablero[i-4,j+4]='   ' Entonces
													aux<-tablero[i-4,j+4]
													tablero[i-4,j+4]<-tablero[i,j]
													tablero[i,j]<-aux
													tablero[i-2,j+2]<-'   '
													contadorB<-contadorB+1//La funcion de este contador es contar CUANTAS fichas contrarias me voy comiendo
													ficha<-ficha+1
												SiNo//Si hay otra ficha no la puede comer
												escribir "No se puede realizar este movimiento"
												
											Fin Si
											
										SiNo
											escribir "No se puede realizar este movimiento"
											
										Fin Si
									Fin Si
								SiNo
									Si j+2=16 Entonces
										Si tablero[i-2,j+2]='   ' Entonces
											aux<-tablero[i-2,j+2]
											tablero[i-2,j+2]<-tablero[i,j]
											tablero[i,j]<-aux
											ficha<-ficha+1
										SiNo
											//Si no es un compañero lo come y avanza al otro casillero
											Si tablero[i-2,j+2]='A01' O tablero[i-2,j+2]='A02' O tablero[i-2,j+2]='A03' O tablero[i-2,j+2]='A04' O tablero[i-2,j+2]='A05' O tablero[i-2,j+2]='A06' O tablero[i-2,j+2]='A07' O tablero[i-2,j+2]='A08' O tablero[i-2,j+2]='A09' O tablero[i-2,j+2]='A10' O tablero[i-2,j+2]='A11' O tablero[i-2,j+2]='A12' Entonces
												
												Si tablero[i-4,j]='   ' Entonces
													aux<-tablero[i-4,j]
													tablero[i-4,j]<-tablero[i,j]
													tablero[i,j]<-aux
													tablero[i-2,j+2]<-'   '
													contadorB<-contadorB+1
													ficha<-ficha+1
												SiNo
													escribir "No se puede realizar este movimiento"
													
												Fin Si
												
											FinSi
											
										Fin Si
									SiNo
										escribir "No se puede realizar este movimiento"
										
									Fin Si
								Fin Si
								SiNo
									escribir "No se puede realizar este movimiento"
								Fin Si
								
							
							'l','L':
								Si i+2<=16 Entonces
									Si j+2<16 Entonces
										Si tablero[i+2,j+2]='   ' Entonces
											aux<-tablero[i+2,j+2]
											tablero[i+2,j+2]<-tablero[i,j]
											tablero[i,j]<-aux
											ficha<-ficha+1
										SiNo//si hay una ficha contraria lo come 
										Si tablero[i+2,j+2]='A01' O tablero[i+2,j+2]='A02' O tablero[i+2,j+2]='A03' O tablero[i+2,j+2]='A04' O tablero[i+2,j+2]='A05' O tablero[i+2,j+2]='A06' O tablero[i+2,j+2]='A07' O tablero[i+2,j+2]='A08' O tablero[i+2,j+2]='A09' O tablero[i+2,j+2]='A10' O tablero[i+2,j+2]='A11' O tablero[i+2,j+2]='A12' Entonces
											Si tablero[i+4,j+4]='   ' Entonces
												aux<-tablero[i+4,j+4]
												tablero[i+4,j+4]<-tablero[i,j]
												tablero[i,j]<-aux
												tablero[i+2,j+2]<-'   '
												contadorB<-contadorB+1
												ficha<-ficha+1
											SiNo
												escribir "No se puede realizar este movimiento"
												
											Fin Si
											
										SiNo
											escribir "no se puede realizar este movimiento"
											
										Fin Si
									Fin Si
								SiNo
									Si j+2=16 Entonces//Si no hay ficha contraria simplemente avanza
										Si tablero[i+2,j+2]='   ' Entonces
											aux<-tablero[i+2,j+2]
											tablero[i+2,j+2]<-tablero[i,j]
											tablero[i,j]<-aux
											ficha<-ficha+1
										SiNo
											Si tablero[i+2,j+2]='A01' O tablero[i+2,j+2]='A02' O tablero[i+2,j+2]='A03' O tablero[i+2,j+2]='A04' O tablero[i+2,j+2]='A05' O tablero[i+2,j+2]='A06' O tablero[i+2,j+2]='A07' O tablero[i+2,j+2]='A08' O tablero[i+2,j+2]='A09' O tablero[i+2,j+2]='A10' O tablero[i+2,j+2]='A11' O tablero[i+2,j+2]='A12' Entonces
												Si tablero[i+4,j]='   ' Entonces
													aux<-tablero[i+4,j]
													tablero[i+4,j]<-tablero[i,j]
													tablero[i,j]<-aux
													tablero[i+2,j+2]<-'   '
													contadorB<-contadorB+1
													ficha<-ficha+1
												SiNo
													escribir "No se puede realizar este movimiento"
													
													Limpiar Pantalla
												Fin Si
												
											SiNo
												escribir "No se puede realizar este movimeinto"
												
											Fin Si
										Fin Si
									SiNo
										escribir "No se puede realizar este movimiento"
										
									Fin Si
								Fin Si
								SiNo
									escribir "No se puede realizar este movimiento"
								Fin Si
							
							'k','K':
								Si i+2<=16 Entonces
									Si j-2>2 Entonces
										Si tablero[i+2,j-2]='   ' Entonces
											aux<-tablero[i+2,j-2]
											tablero[i+2,j-2]<-tablero[i,j]
											tablero[i,j]<-aux
											ficha<-ficha+1
										SiNo
											Si tablero[i+2,j-2]='A01' O tablero[i+2,j-2]='A02' O tablero[i+2,j-2]='A03' O tablero[i+2,j-2]='A04' O tablero[i+2,j-2]='A05' O tablero[i+2,j-2]='A06' O tablero[i+2,j-2]='A07' O tablero[i+2,j-2]='A08' O tablero[i+2,j-2]='A09' O tablero[i+2,j-2]='A10' O tablero[i+2,j-2]='A11' O tablero[i+2,j-2]='A12' Entonces
												Si tablero[i+4,j-4]='   ' Entonces
													aux<-tablero[i+4,j-4]
													tablero[i+4,j-4]<-tablero[i,j]
													tablero[i,j]<-aux
													tablero[i+2,j-2]<-'   '
													contadorB<-contadorB+1
													ficha<-ficha+1
												SiNo
													escribir "No se puede realizar este movimiento"
													
												Fin Si
											SiNo
												escribir "No se puede realizar este movimiento"
												
											Fin Si
										Fin Si
									SiNo
										Si j-2=2 Entonces
											Si tablero[i+2,j-2]='   ' Entonces
												aux<-tablero[i+2,j-2]
												tablero[i+2,j-2]<-tablero[i,j]
												tablero[i,j]<-aux
												ficha<-ficha+1
											SiNo
												Si tablero[i+2,j-2]='A01' O tablero[i+2,j-2]='A02' O tablero[i+2,j-2]='A03' O tablero[i+2,j-2]='A04' O tablero[i+2,j-2]='A05' O tablero[i+2,j-2]='A06' O tablero[i+2,j-2]='A07' O tablero[i+2,j-2]='A08' O tablero[i+2,j-2]='A09' O tablero[i+2,j-2]='A10' O tablero[i+2,j-2]='A11' O tablero[i+2,j-2]='A12' Entonces
													Si tablero[i+4,j]='   ' Entonces
														aux<-tablero[i+4,j]
														tablero[i+4,j]<-tablero[i,j]
														tablero[i,j]<-aux
														tablero[i+2,j-2]<-'   '
														contadorB<-contadorB+1
														ficha<-ficha+1
													SiNo
														escribir "No se puede realizar este movimiento"
													Fin Si
												SiNo
													escribir "No se puede realizar este movimiento"
												Fin Si
											Fin Si
										SiNo
											escribir "No se puede realizar este movimiento"
										Fin Si
									Fin Si
								SiNo
									escribir "No se puede realizar este movimiento"
								Fin Si
						
							'i','I':
								Si i-2>=2 Entonces
									Si j-2>2 Entonces
										Si tablero[i-2,j-2]='   ' Entonces
											aux<-tablero[i-2,j-2]
											tablero[i-2,j-2]<-tablero[i,j]
											tablero[i,j]<-aux
											ficha<-ficha+1
										SiNo
											Si tablero[i-2,j-2]='A01' O tablero[i-2,j-2]='A02' O tablero[i-2,j-2]='A03' O tablero[i-2,j-2]='A04' O tablero[i-2,j-2]='A05' O tablero[i-2,j-2]='A06' O tablero[i-2,j-2]='A07' O tablero[i-2,j-2]='A08' O tablero[i-2,j-2]='A09' O tablero[i-2,j-2]='A10' O tablero[i-2,j-2]='A11' O tablero[i-2,j-2]='A12' Entonces
												Si tablero[i-4,j-4]='   ' Entonces
													aux<-tablero[i-4,j-4]
													tablero[i-4,j-4]<-tablero[i,j]
													tablero[i,j]<-aux
													tablero[i-2,j-2]<-'   '
													contadorB<-contadorB+1
													ficha<-ficha+1
												SiNo
													escribir "No se puede realizar este movimiento"
												Fin Si
											SiNo
												escribir "No se puede realizar este movimiento"
											Fin Si
										Fin Si
									SiNo
										Si j-2=2 Entonces
											Si tablero[i-2,j-2]='   ' Entonces
												aux<-tablero[i-2,j-2]
												tablero[i-2,j-2]<-tablero[i,j]
												tablero[i,j]<-aux
												ficha<-ficha+1
											SiNo
												Si tablero[i-2,j-2]='A01' O tablero[i-2,j-2]='A02' O tablero[i-2,j-2]='A03' O tablero[i-2,j-2]='A04' O tablero[i-2,j-2]='A05' O tablero[i-2,j-2]='A06' O tablero[i-2,j-2]='A07' O tablero[i-2,j-2]='A08' O tablero[i-2,j-2]='A09' O tablero[i-2,j-2]='A10' O tablero[i-2,j-2]='A11' O tablero[i-2,j-2]='A12' Entonces
													Si tablero[i-4,j]='   ' Entonces
														aux<-tablero[i-4,j]
														tablero[i-4,j]<-tablero[i,j]
														tablero[i,j]<-aux
														tablero[i-2,j-2]<-'   '
														contadorB<-contadorB+1
														ficha<-ficha+1
													SiNo
														escribir "No se puede realizar este movimiento"
													Fin Si
												SiNo
													escribir "No se puede realizar este movimiento"
												Fin Si
											Fin Si
										SiNo
											escribir "No se puede realizar este movimiento"
										Fin Si
									Fin Si
								SiNo
									escribir "No se puede realizar este movimiento"
								Fin Si
						
				Fin Segun
				i<-19
				j<-19
				pasa<-13//pasa HACE REFERENCIA A QUE SI LA FICHA FUE SELECCIONADA CORRECTAMENTE , Y SI LA FICHA FUE ENCONTRADA EN EL TABLERO SE LE DA EL VALOR 13 
			Fin Si
		Fin Para
	Fin Para
	Si pasa<>13 Entonces//EN CASO DE QUE pasa NO TENGA EL VALOR 13 , SIGNIFICA QUE LA FICHA FUE BIEN SELECCIONADA , PERO QUE YA NO SE ENCUENTRA EN EL TABLERO
		escribir "ESA FICHA YA FUE ELIMINADA"
	Fin Si
	
SiNo
	Si opc='0' Entonces
		escribir "Ud ha decidido salir del juego"
		escribir "Presione cualquier tecla para continuar..."
		Esperar Tecla
		ficha<-ficha+1
		apuntador<-apuntador+1
	SiNo
		escribir "FICHA INCORRECTA,INTENTE NUEVAMENTE"
		Esperar 1 Segundos
	Fin Si
	
Fin Si

Hasta Que ficha=1


Fin Funcion
//**************************************************************************************************
//************************* FIN FUNCION B *********************************************************
//**********************************************************************************************

Funcion mostrarTablero ( tablero por referencia )
	//
	//**MUESTRA TABLERO**
	//
	
	Para i<-1 Hasta 17 Con Paso 1 Hacer
		Para j<-1 Hasta 17 con Paso 1 Hacer
			escribir sin saltar tablero[i,j]
		Fin Para
		escribir ""
	Fin Para
	
Fin Funcion

Funcion cargarTablero (tablero Por Referencia )
	Para i<-1 Hasta 17 Con Paso 2 Hacer
		Para j<-1 Hasta 17 Con Paso 2 Hacer
			tablero[i,j]<-"+"
		Fin Para
		Para j<-2 Hasta 17 Con Paso 2 Hacer
			tablero[i,j]<-"-----"
		Fin Para
	Fin Para
	Para i<-2 Hasta 17 Con Paso 2 Hacer
		Para j<-1 Hasta 17 Con Paso 2 Hacer
			Si j=1 Entonces
				tablero[i,j]<-"| "
			SiNo
				Si j=17 Entonces
					tablero[i,j]<-" |"
				SiNo
					tablero[i,j]<-" | "
				Fin Si
			Fin Si
		Fin Para
	Fin Para
	Para i<-2 Hasta 17 Con Paso 4 Hacer
		Para j<-4 Hasta 17 Con Paso 4 Hacer
			tablero[i,j]<-"   "
		Fin Para
	Fin Para
	Para i<-4 Hasta 17 Con Paso 4 Hacer
		Para j<-2 Hasta 17 Con Paso 2 Hacer
			tablero[i,j]<-"   "
		Fin Para
	Fin Para
	Para i<-10 Hasta 10 Con Paso 1 Hacer
		Para j<-2 Hasta 17 Con Paso 2 Hacer
			tablero[i,j]<-"   "
		Fin Para
	Fin Para
	tablero[2,2]<-"A09"
	tablero[2,6]<-"A10"
	tablero[2,10]<-"A11"
	tablero[2,14]<-"A12"
	tablero[4,4]<-"A05"
	tablero[4,8]<-"A06"
	tablero[4,12]<-"A07"
	tablero[4,16]<-"A08"
	tablero[6,2]<-"A01"
	tablero[6,6]<-"A02"
	tablero[6,10]<-"A03"
	tablero[6,14]<-"A04"
	tablero[16,4]<-"B09"
	tablero[16,8]<-"B10"
	tablero[16,12]<-"B11"
	tablero[16,16]<-"B12"
	tablero[14,2]<-"B05"
	tablero[14,6]<-"B06"
	tablero[14,10]<-"B07"
	tablero[14,14]<-"B08"
	tablero[12,4]<-"B01"
	tablero[12,8]<-"B02"
	tablero[12,12]<-"B03"
	tablero[12,16]<-"B04"
	
	
Fin Funcion


//################################################### FIN DE LAS FUNCIONES DAMAS ########################################################
//########################################################################################################################################



//###################################################INICIO DE LAS FUNCIONES TATETI ######################################################
//########################################################################################################################################
//FUNSION DONDE SE INICIALIZA EL TABLERO
Funcion inicializartablero (tablero_x_o Por Referencia, fila, columna)
	Definir i, j, contador Como Entero
	Definir valorCasillero Como caracter
	contador <- 1
	Para i <- 1 Hasta fila Con Paso 1 Hacer
		Para j <- 1 Hasta columna Con Paso 1 Hacer
			// Convertir el contador a cadena y asignarlo a tablero[i,j]
			valorCasillero <- ConvertirATexto(contador)
			tablero_x_o[i,j] <- valorCasillero
			// Incrementar el contador
			contador <- contador + 1
			// Si el contador es mayor que 9, reiniciar a 1
			Si contador > 9 Entonces
				contador <- 1
			FinSi
		Fin Para
	Fin Para
Fin Funcion

//FUNSION DONDE SE REALIZA EL JUEGO DEL TABLERO
Funcion dato <- jugarjugador(tablero Por Referencia, fila, columna, turnoAnterior)
    Definir posicion, dato Como caracter
    Definir turnoValido Como Logico
	
    turnoValido <- Falso
    
    Escribir 'Ingrese el número de posición'
    Leer posicion
	//Escribir 'ver la variable turnoAnterior -> ',turnoAnterior
    Para i <- 1 Hasta fila Con Paso 1 Hacer
        Para j <- 1 Hasta columna Con Paso 1 Hacer
            Si tablero[i, j] = posicion Entonces
                Si tablero[i, j] <> 'X' Y tablero[i, j] <> 'O' Entonces
                    Escribir 'Ingrese su turno (X o O)'
					Leer dato
					// Verificar si el turno actual es igual al turno anterior
					Si (dato = 'X' Y turnoAnterior = 'X') O (dato = 'O' Y turnoAnterior = 'O') Entonces
						Escribir 'No puedes jugar dos veces seguidas con el mismo turno.'
					Sino
						Si dato = 'X' O dato = 'O' Entonces
							tablero[i, j] <- dato
						    turnoValido <- Verdadero
						SiNo
						    Escribir 'No puedes ingresar otra letra distinta de X o O.'
					    FinSi
					FinSi
                Sino
                    Escribir 'Posición ocupada. Elija otra posición.'
                FinSi
            FinSi
        FinPara
    FinPara
	Esperar 2 Segundos
Fin Funcion





//FUNSION QUE REVISA EL GANADOR
Funcion resultado <- chequearganador (tablero_x_o Por Referencia, fila, columna)
	Definir resultado Como Entero
	Definir volver Como Caracter
	
	Si tablero_x_o[1,1] = 'X' Y tablero_x_o[1,2] = 'X' Y tablero_x_o[1,3] = 'X' O tablero_x_o[1,1] = 'O' Y tablero_x_o[1,2] = 'O' Y tablero_x_o[1,3] = 'O' Entonces
		//primer fila, revisamos horizontalmente 
		Limpiar Pantalla
		Escribir'Hay un ganador';
		dibujartablero(tablero_x_o,fila)
		resultado<-1;
	Sino Si tablero_x_o[2,1] = 'X' Y tablero_x_o[2,2] = 'X' Y tablero_x_o[2,3] = 'X' O tablero_x_o[2,1] = 'O' Y tablero_x_o[2,2] = 'O' Y tablero_x_o[2,3] = 'O' Entonces
			//segunda fila, revisamos horizontalmente
			Limpiar Pantalla
			Escribir'Hay un ganador';
			dibujartablero(tablero_x_o,fila)
			resultado<-1;
		Sino Si tablero_x_o[3,1] = 'X' Y tablero_x_o[3,2] = 'X' Y tablero_x_o[3,3] = 'X' O tablero_x_o[3,1] = 'O' Y tablero_x_o[3,2] = 'O' Y tablero_x_o[3,3] = 'O' Entonces
				//tercer fila, revisamos horizontalmente 
				Limpiar Pantalla
				Escribir'Hay un ganador';
				dibujartablero(tablero_x_o,fila)
				resultado<-1;
			Sino Si tablero_x_o[1,1] = 'X' Y tablero_x_o[2,1] = 'X' Y tablero_x_o[3,1] = 'X' O tablero_x_o[1,1] = 'O' Y tablero_x_o[2,1] = 'O' Y tablero_x_o[3,1] = 'O' Entonces
					//primer columna, revisamos verticalmente 
					Limpiar Pantalla
					Escribir'Hay un ganador';
					dibujartablero(tablero_x_o,fila)
					resultado<-1;
				Sino Si tablero_x_o[1,2] = 'X' Y tablero_x_o[2,2] = 'X' Y tablero_x_o[3,2] = 'X' O tablero_x_o[1,2] = 'O' Y tablero_x_o[2,2] = 'O' Y tablero_x_o[3,2] == 'O' Entonces
						//segunda columna, revisamos verticalmente
						Limpiar Pantalla
						Escribir'Hay un ganador';
						dibujartablero(tablero_x_o,fila)
						resultado<-1; 
					Sino Si tablero_x_o[1,3] = 'X' Y tablero_x_o[2,3] = 'X' Y tablero_x_o[3,3] = 'X' O tablero_x_o[1,3] = '0' Y tablero_x_o[2,3] = '0' Y tablero_x_o[3,3] = '0' Entonces
							//tercer columna, revisamos verticalmente
							Limpiar Pantalla
							Escribir'Hay un ganador';
							dibujartablero(tablero_x_o,fila)
							resultado<-1;   
						Sino Si tablero_x_o[1,1] = 'X' Y tablero_x_o[2,2] = 'X' Y tablero_x_o[3,3] = 'X' O tablero_x_o[1,1] = 'O' Y tablero_x_o[2,2] = 'O' Y tablero_x_o[3,3] = 'O' Entonces
								//Diagonales
								Limpiar Pantalla
								Escribir'Hay un ganador';
								dibujartablero(tablero_x_o,fila)
								resultado<-1;      
								
								//Retornar<-resultado    
							Sino Si tablero_x_o[3,1] = 'X' Y tablero_x_o[2,2] = 'X' Y tablero_x_o[1,3] = 'X' O tablero_x_o[3,1] = 'O' Y tablero_x_o[2,2] = 'O' Y tablero_x_o[1,3] = 'O' Entonces
									//Diagonales
									Limpiar Pantalla
									Escribir'Hay un ganador';
									dibujartablero(tablero_x_o,fila)
									resultado<-1;
								Sino
									Escribir'Aun no hay Ganador';
								FinSi
							FinSi	
						FinSi
					FinSi
				FinSi
			FinSi
		FinSi
	FinSi	
	
Fin Funcion



Funcion dibujartablero(tablero Por Referencia, fila)
	
	Escribir'#############################################################################'
	//Escribir ''
	Escribir '##               +', '----------------------------------------', '-', '+               ##'
	Para i <- 1 Hasta fila Hacer
		Escribir '##               |', '             ', '|', '             ', '|', '             ', '|               ##'
		Escribir '##               |', '      ', tablero[i, 1], '      ', '|', '      ', tablero[i, 2], '      ', '|', '      ', tablero[i, 3], '      ', '|               ##'
		Escribir '##               |', '             ', '|', '             ', '|', '             ', '|               ##'
		Si i < fila Entonces
			Escribir '##               |', '------------', '-', '|', '------------', '-', '|', '------------', '-', '|               ##'
		FinSi
	FinPara
	Escribir '##               +', '----------------------------------------', '-', '+               ##'
	//Escribir ''
	Escribir'#############################################################################'
Fin Funcion



//################################################### FIN DE LAS FUNCIONES TATETI ########################################################
//########################################################################################################################################



//################################################### INICIO DE LAS FUNCIONES LUDO ######################################################
//########################################################################################################################################

Funcion inicio_Turno(jugadorActual Por Valor, informePartida Por Referencia)
	Segun jugadorActual Hacer		// Indica de forma entendible el turno de quien es
		1: informePartida[1] <- "Turno del Jugador A"
		2: informePartida[1] <- "Turno del Jugador B"
		3: informePartida[1] <- "Turno del Jugador C"
		4: informePartida[1] <- "Turno del Jugador D"
	FinSegun
	//informePartida[2] <- "Pulse una tecla para lanzar el dado"
	informePartida[2] <- "Presione ENTER para lanzar el dado"
FinFuncion



Funcion juegoFin <- opc_Menu(matriz Por Referencia, informePartida Por Referencia)
	Definir opc Como Caracter
	
	Leer opc
	Si opc = 'SALIR' o opc = 'salir' Entonces
		Limpiar Pantalla
		informePartida[2] <- "Saliendo del juego, ingrese SI para confirmar o NO para volver al juego"
		mostrar_Tablero_LUDO(matriz, informePartida) // Se actualiza el tablero
		Repetir 
			Leer opc
			Si opc <> 'SI' y opc <> 'NO' Entonces
				Limpiar Pantalla
				informePartida[2] <- "Ha ingresado un numero incorrecto, intente otra vez"
				mostrar_Tablero_LUDO(matriz, informePartida) // Se actualiza el tablero
			SiNo
				Si opc = 'NO' Entonces
					juegoFin <- 0
				SiNo
					SI opc = 'SI'
						juegoFin <- 1
					FinSi
				FinSi
			FinSi
		Hasta Que (opc = 'SI' o opc = 'NO')
	FinSi
FinFuncion




// GESTOR DE FICHAS
Funcion fichaMover <- gestor_Fichas(fichasJugador Por Referencia, recorridoJugador Por Referencia, dado Por Valor, matriz Por Referencia, informePartida Por Referencia)
	Definir contFichasCasa Como Entero		// variable para llevar la cuenta de la cantidad de fichas que hay en la casa del jugador
	Definir numFicha Como Entero		// sirve para iterar entre las fichas del vector de ese jugador
	Definir fichaMover Como Entero		// este es el numero de ficha que se va a mover en este turno
	Dimension fichasDisponibles[4]
	Definir cantFD Como Entero	// sirve para contar cuantas fichas estan disponibles para moverse
	Definir casillaActual Como Entero  // sirve para ver en que casilla está la ficha que estoy analizando
	ficha <- 0 
	Definir bloquearSalida Como Entero	// bloqueará la salida de nuevas fichas si todavia hay una ficha de este jugador en la posicion de salida
	bloquearSalida <- 0
	
	Para numFicha<-1 Hasta 4 Con Paso 1 Hacer
		Si fichasJugador[numFicha] = recorridoJugador[1] Entonces	// Itero rapidamente la posicion de todas las fichas, para saber si alguna está en la casilla de inicio y bloqueo la salida de nuevsa fichas (ya que no puede haber mas de una ficha en la misma casilla)
			bloquearSalida <- 1
		FinSi
	FinPara
	
	Para numFicha<-1 Hasta 4 Con Paso 1 Hacer	// Itero para ver la posicion de cada ficha (si está en casa o en el tablero)
		
		Si fichasJugador[numFicha] = 0 Entonces		// consultamos cuantas fichas están en casa
			contFichasCasa <- contFichasCasa + 1		// Encontró una ficha en casa, entonces suma 1
			Si dado = 6 y bloquearSalida = 0 Entonces
				fichasDisponibles[numFicha] <- 1		// La ficha está en la casa y sale un 6, indica con un 1 que está disponible para moverse
			SiNo
				fichasDisponibles[numFicha] <- 0		// La ficha está en la casa y el dado NO es 6, indica con un 0 que la ficha NO está disponible para moverse
			FinSi
			
		SiNo	// Si entra acá es porque la ficha no está en casa, por ende está en el tablero
			Para i<-1 Hasta 51 Con Paso 1 Hacer		// tengo que iterar el recorrido del jugador para ver en que casilla está numFicha y saber si ésta ficha va a poder avanzar la cantidad de casillas que indica el dado
				Si fichasJugador[numFicha] = recorridoJugador[i] Entonces	// Pregunto si la posicion (encriptada) de esta ficha corresponde a la casilla numero i
					casillaActual <- i	// si coinciden los numeros, indico que la casilla actual de la ficha es i. Una vez tengo la posicion, debo averiguar si puedo mover esta ficha
					casillaSiguiente <- i+dado
					Si dado + i > 51 Entonces	// 1. Pregunto si sumandole el valor del dado a la casilla actua, me paso del maximo de casillas
						fichasDisponibles[numFicha] <- 0		// Me paso del maximo de casillas del recorrido, pongo 0 ya que esta ficha no está disponible para moverse
						
					SiNo
						Para j<-1 hasta 4 Con Paso 1 Hacer
							Si fichasJugador[j] = recorridoJugador[casillaSiguiente] Entonces	// VERIFICA no haya alguna otra ficha en la posicion a la que se moveria la fichaActual, ya que no puede haber dos fichas en una misma casilla
								fichasDisponibles[numFicha] <- 0		// Si la posicion ya está ocupada por otra ficha de este jugador, indica que esta ficha NO está disponible para moverse
								j<-100		// salgo para que no siga preguntando, esta ficha no se puede mover
							SiNo
								fichasDisponibles[numFicha] <- 1		// si entra acá significa que la ficha puede moverse
							FinSi
						FinPara
					FinSi
				FinSi
			FinPara
		FinSi
	FinPara
	
	// Una vez validado que ficha se puede mover, me fijo cuantas son... SI solo es una, muevo esa ficha. Si NO, cosulto al Jugador
	Si contFichasCasa = 4 y dado = 6 Entonces		// Primero pregunto Si todas las fichas están en la casa, que se mueva la primera (A1, B1, C1 o D1)
		fichaMover <- 1
	SiNo
		Para numFicha<-1 Hasta 4 Con Paso 1 Hacer		// sirve para contar cuantas Fichas estan Disponibles para moverse (utilizando cantFD)
			Si fichasDisponibles[numFicha] = 1 Entonces
				cantFD <- cantFD + 1
				fichaMover <- numFicha		// Guardo el numero de ficha que posiblemente se vaya a mover (se dice "posiblemente" ya que hay que comprobar el estado del resto)
			FinSi
		FinPara
		
		Si cantFD > 1 Entonces		// llegado a este punto, se verifica que hay mas de una ficha que se puede mover, entonces...
			fichaMover <- pedir_Ficha_Jugador(fichasDisponibles, matriz, informePartida)	// le pregunto al jugador que ficha quiere mover
		SiNo	
			Si cantFD = 0 Entonces
				informePartida[5] <- "No hay fichas disponibles para mover"
			SiNo	// Si entra acá, se queda con el valor de la numFicha asignado anteriormente y moverá la unica ficha disponible
				informePartida[5] <- "Se mueve automáticamente la ficha, porque no hay otra disponible"
			FinSi
		FinSi		
	FinSi
	
	
	// acá ya tengo la ficha que se va a mover validada y lista para moverse
FinFuncion
// FIN GESTOR DE FICHAS



// FuNCION PEDIR NUMERO DE FICHA AL JUGADOR
Funcion numFicha <- pedir_Ficha_Jugador(fichasDisponibles Por Referencia, matriz Por Referencia, informePartida Por Referencia)	// le pregunto al jugador que ficha quiere mover y valida que se elija uan ficha disponible
	Esperar 500 Milisegundos
	informePartida[5] <- "Elija la ficha que va a mover"
	Mientras numFicha < 1 o numFicha > 4 Hacer		// Elegir numero de ficha, entre 1 y 4 con validacion
		//Escribir Sin Saltar "Su selección: "
		Limpiar Pantalla
		mostrar_Tablero_LUDO(matriz, informePartida) // Muestra el Tablero 
		Leer numFicha
		Si numFicha < 1 o numFicha > 4 Entonces		// si ingresa una ficha que no es, salta mensaje y pide volver a ingresar
			informePartida[6] <- "Ha ingresado un numero incorrecto de ficha, por favor intente otra vez..."
			Esperar 100 Milisegundos
//			Limpiar Pantalla
//			mostrar_Tablero_LUDO(matriz, informePartida) // Muestra el Tablero 
		SiNo
			Si fichasDisponibles[numFicha] = 0 Entonces
				informePartida[6] <- "Esta ficha no está disponible para mover en este turno"	// si elige una ficha que no puede mover, pongo el valor de ficha incorrecto para que vuelva a preguntar
				Esperar 100 Milisegundos
//				Limpiar Pantalla
//				mostrar_Tablero_LUDO(matriz, informePartida) // Muestra el Tablero 
				numFicha <- 100
			FinSi
		FinSi
	FinMientras
	informePartida[5] <- "  "	// borro cualquier mensaje que pueda tener este vector en esta posicion, ya que no quieroque se imprima nada
	informePartida[6] <- "  "
FinFuncion
// FIN FuNCION PEDIR NUMERO DE FICHA AL JUGADOR



Funcion textoGuardar <- mover_Ficha(numJugador Por Valor, fichasJugador Por Referencia, ficha Por Valor, recorridoJugador Por Referencia, dado Por Valor, matriz Por Referencia, informePartida Por Referencia) 
	// En esta funcion tengo que mostrar en el display el desplazamiento de la ficha a traves del tablero hasta avanzar la cantidad de veces que indica el dado
	// Le paso la posicion inicial de la ficha. Luego comparo y encuentro a que posicion del vector recorridoJugador pertenece. Teniendo ese dato, le sumo el dado y veo en que posicion cae
	// Con un Para hago que la ficha avance de uno en uno hasta llegar a la casilla destino
	// ESTO HAY QUE SACARLO jF es un numero encriptado (de dos digitos) que contine el numeor de jugador y numeor de ficha, en donde el primer digito indica el jugador y el segundo la ficha.
	Definir posInicial Como Entero
	posInicial <- fichasJugador[ficha]
	Definir numCasilla, casillaActual Como Entero		// numCasilla sirve para iterar, casillaActual servira para ir moviendo la ficha por el tablero, partiendo de un punto inicial hasta avanzar la cantidad de casillas que indica el dado
	Definir casillasAvanzar Como Entero // define la cantidad de casillas que va a terminar avanzando esta ficha en este turno
	Definir fA, cA, fN, cN Como Entero // acá voy a guardar la columna y fila donde se encuentran las casillas por las que la ficha va a moverse
	Definir textoGuardar Como Caracter	// variable que guarda las fichas, para no ser borradas si la ficha actual pasa por encima de sus casillas
	textoGuardar <- "  "
	
	SI posInicial = 0 Entonces		// primero pregunto si esta ficha está en la casa
		casillaActual <- pos_Casa(numJugador, ficha)		// Con esta funcion busco la posicion de la casa de esta ficha (dentro de la matriz tablero)
		desencriptarPosicion(casillaActual, fA, cA)		// desencripto posicion de la base para borrarle la ficha
		matriz(fA, cA) <- "  "		// borro la ficha de esta posicion, para que se vea en el tablero que hay movimiento
		fichasJugador[ficha] <- recorridoJugador[1]		// guardo la posicion nueva de esta ficha, que en este caso seria la casilla 1 porque acaba de salir de la casa
		desencriptarPosicion(recorridoJugador[1], fN, cN)		// desencripta la posicion de inicio de las fichas de este jugador
		textoCasilla <- selector_Ficha(numJugador, ficha)	// le paso el numero de jugador y de ficha, para poder traducirlo a texto e imprimirlo en la matriz. De esta forma se visualiza como se desplaza la ficha
		Si matriz(fN, cN) <> "  " Entonces
			textoGuardar <- matriz(fN, cN) 	// pregunta si en la casilla de salida hay una ficha de otro jugador, para capturarla
		FinSi
		matriz(fN, cN) <- textoCasilla
		//Esperar 1 Segundos
		Limpiar Pantalla
		mostrar_Tablero_LUDO(matriz, informePartida)	// se limpia la pantalla y muestra el tablero, para ver como avanza la ficha
		Esperar 350 Milisegundos		// espera para que se vea bien el movimiento
	SiNo
		Para numCasilla <- 1 Hasta 51 Con Paso 1 Hacer		// 51 (cincuenta y uno) es la cantidad de casillas que hay en el tablero para recorrer para cada Jugador
			Si posInicial = recorridoJugador[numCasilla] Entonces	// busco cual es el numero de casilla actual en la que se encuentra la ficha
				casillaActual <- numCasilla		// indico el numero de casilla que tiene asignada esta posicion para poder sumarle el valor de dado, ya que recorridoJugador contiene las posiciones de cada casilla dentro de la matriz del tablero
				numCasilla <- 100	// Encontré el dato que queria, fuerzo la salida
			FinSi
		FinPara
		casillasAvanzar <- dado
		Para numCasilla <- 1 Hasta casillasAvanzar Con Paso 1 Hacer	// se itera desde 1 hasta la cantidad de casillas que permite avanzar el dado en este turno, usando la variable numCasilla
			desencriptarPosicion(recorridoJugador[casillaActual], fA, cA)		// desencripto la posicion actual para borrarle la ficha
			Si textoGuardar <> "  " Entonces	// Si antes habia una ficha, la vuelve a escribir, sino deja en blanco
				matriz(fA, cA) <- textoGuardar
				textoGuardar <- "  "
			SiNo
				matriz(fA, cA) <- "  "		// borro la ficha de esta posicion, para que se vea en el tablero que hay movimiento
			FinSi
			casillaActual <- casillaActual + 1
			fichasJugador[ficha] <- recorridoJugador[casillaActual]	// se le cambia la posicion a pos final, variable que se retornará cuando salga de este bucle para guardarla en el vector de ese jugador
			desencriptarPosicion(recorridoJugador[casillaActual], fN, cN)		// desencripto la posicion a la que avancé para poner la ficha
			textoCasilla <- selector_Ficha(numJugador, ficha)	// le paso el numero de juagdor y de ficha encriptados, para poder traducirlo a texto e imprimirlo en la matriz. De esta forma se visualiza como se desplaza la ficha
			Si matriz(fN, cN) <> "  " Entonces
				textoGuardar <- matriz(fN, cN)	// pregunta si en la casilla que va a pisar hay algo, de ser así lo guarda para volver a dibujarla cuando la ficha se mueva de esta casilla. Salvo que sea una ficha capturada
			FinSi
			matriz(fN, cN) <- textoCasilla
			Limpiar Pantalla
			mostrar_Tablero_LUDO(matriz, informePartida)	// se limpia la pantalla y muestra el tablero, para ver como avanza la ficha
			Esperar 350 Milisegundos		// espera para que se vea bien el movimiento
		FinPara
	FinSi
FinFuncion



Funcion desencriptarPosicion(posicionEncriptada por Valor, f Por Referencia, c Por Referencia)		// sirve para pasar del formato ffcc a f y c (fila y columna) y poder usarlos en la matriz
	f <- TRUNC(posicionEncriptada / 100) - 10		// primero le paso la posicion actual, q en este caso al sacar una ficha, sale de la casa o sea jA[x]
	c <- posicionEncriptada - TRUNC(posicionEncriptada / 100) * 100 - 10
FinFuncion



Funcion textoCasilla <- selector_Ficha(numJugador Por Valor, numFicha Por Valor)
	// Funcion que diferencia la ficha que estoy moviendo para rellenar la casilla con los caracteres correctos
	Segun numJugador Hacer
		1: textoCasilla <- "A"
		2: textoCasilla <- "B"
		3: textoCasilla <- "C"
		4: textoCasilla <- "D"
	FinSegun
	
	Segun numFicha		// esto indica que tengo que pasar el numero de ficha que quiero mover para indicar que texto imprimir, tambien varia segun el tipo de jugador
		1: textoCasilla <- textoCasilla + "1"
		2: textoCasilla <- textoCasilla + "2"
		3: textoCasilla <- textoCasilla + "3"
		4: textoCasilla <- textoCasilla + "4"
	FinSegun
FinFuncion



Funcion posicionCasaFicha <- pos_Casa(numJugador Por Valor, ficha Por Valor)	// Segun el jugador y el num de ficha, devuelve en que posicion dentro de la matriz tiene su casa dicha ficha, esto sirve para sacar una ficha de la casa o devolverla
	Segun numJugador Hacer
		1:
			Segun ficha Hacer		// estos numeros estan mapeado o encriptados, representan la Fila y Columna en formato ffcc, hay que separarlos y restarles 10. La funcion desencriptarPosicion hace eso
				1: posicionCasaFicha <- 1212
				2: posicionCasaFicha <- 1214
				3: posicionCasaFicha <- 1412
				4: posicionCasaFicha <- 1414
					
			FinSegun
		2:
			Segun ficha Hacer
				1: posicionCasaFicha <- 1220
				2: posicionCasaFicha <- 1222
				3: posicionCasaFicha <- 1420
				4: posicionCasaFicha <- 1422
					
			FinSegun
		3:
			Segun ficha Hacer
				1: posicionCasaFicha <- 2012
				2: posicionCasaFicha <- 2014
				3: posicionCasaFicha <- 2212
				4: posicionCasaFicha <- 2214
					
			FinSegun
		4:
			Segun ficha Hacer
				1: posicionCasaFicha <- 2020
				2: posicionCasaFicha <- 2022
				3: posicionCasaFicha <- 2220
				4: posicionCasaFicha <- 2222
					
			FinSegun
	FinSegun
FinFuncion



Funcion buscar_Ficha_Capturada(posFichaCapturada Por valor, jX Por Referencia, numJugador Por Valor, matriz Por Referencia, ficha Por Valor, informePartida Por Referencia, fichaCapturada Por Referencia)
	// A esta función entra solo cuando la ficha que se movió en este turno, cae sobre una ficha de otro jugador
	// Entonces, se le pasa la posicion de la casilla en donde estan ambas fichas, y los vectores que contienen las posiciones de las fichas de el resto de jugadores
	// Se recorren los vectores y se averigua que ficha fue capturada para devolverla a su casa
	Definir numFicha, casillaCasa, f, c Como Entero
	//Definir textoCasilla Como Caracter
	
	Para i <- 1 Hasta 4 Con Paso 1 Hacer
		Si jX[i] = posFichaCapturada Entonces
			jX[i] <- 0
			ficha <- i
			i <- 100
		FinSi
	FinPara
	
	Si i >= 100 Entonces		// SI entra acá quiere decir que se igualaron las posiciones, o sea que encontró la ficha capturada
		casillaCasa <- pos_Casa(numJugador, ficha)		// Con esta funcion busco la posicion de la casa de esta ficha (dentro de la matriz tablero)
		desencriptarPosicion(casillaCasa, f, c)		// desencripto posicion de la base para borrarle la ficha
		//textoCasilla <- selector_Ficha(numJugador, ficha)		// traduce a texto el numero de ficha y jugador que fue capturado, para poder escribir los caracteres correctos en la base
		matriz(f, c) <- fichaCapturada
		informePartida[5] <- "Ficha capturada: " + fichaCapturada
	FinSi
FinFuncion



Funcion gandorLudo <- chequear_Si_Jugador_Gana(fichasJugador Por Referencia, recorridoJugador Por Referencia, juegoFin Por Referencia, jugadorTurnoActual Por Valor)
	// cheque que este jugador no tenga las 4 casillas en la zona segura. Si llega a tener sus 4 casillas en zona segura, GANA
	Definir numCasilla, numFicha Como Entero
	Definir casillasSeguras, fichasDisponibles Como Entero
	
	Para numCasilla<-48 Hasta 51 Hacer		// tengo que fijarme que cada una de las ultimas 4 posiciones estén ocupadas por una ficha
		fichasDisponibles <- 0
		Para numFicha<-1 Hasta 4 Con Paso 1 Hacer
			Si fichasJugador[numFicha] = recorridoJugador[numCasilla] Entonces	// Si esta ocupada, salgo y me fijo la proxima posicion
				casillasSeguras <- casillasSeguras + 1
				numFicha <- 100
			SiNo
				fichasDisponibles <- fichasDisponibles - 1
				Si fichasDisponibles = - 4 Entonces		// si fichasDisponibles = -4 significa que ninguna ficha ocupa esa posicon, entonces este jugador no ganó
					numFicha <- 100
					numCasilla <- 100
				FinSi
			FinSi
		FinPara
	FinPara
	
	Si casillasSeguras = 4 Entonces	// si las 4 fichas están dentro de la zona segura, el juego termina
		juegoFin <- 1
		gandorLudo <- jugadorTurnoActual
	FinSi	
FinFuncion



Funcion mostrar_Tablero_LUDO(matriz Por Referencia, informePartida Por Referencia) 
	// -----------------------------------------------------------------------------------------------------  MOSTRAR TABLERO
	Linea_X
	Para f <- 1 Hasta 13 Con Paso 1 Hacer
		Para i <- 1 Hasta 3 Con Paso 1 Hacer
			Escribir Sin Saltar "X"
			Para c <- 1 Hasta 13 Con Paso 1 Hacer
				// "   A2  X"
				Escribir Sin Saltar "    "
				Si matriz(f,c) = "  " Entonces			// Esto diferencia si esta vacia o no la celda
					Escribir sin saltar matriz(f,c)	// si esta vacia, escribe la matriz como corresponde
				SiNo
					Segun i Hacer		// Si no está vacio, significa que tiene una ficha, por lo tanto imprime solo en la linea del medio la ficha y en el resto no, ya que cada casilla tiene 3 lineas de alto
						1, 3: 
							Escribir Sin Saltar "  "
						2: 
							Escribir sin saltar matriz(f,c)
					FinSegun
				FinSi
				
				// acá es donde varía el fin de casilla
				Segun f Hacer
					1, 3, 5, 9, 11, 13:
						Segun c Hacer
							5, 8, 13: 
								Escribir Sin Saltar "   X"
							6, 7:
								SI f = 13 o f = 1 Entonces
									Escribir Sin Saltar "   X"
								SiNo
									Escribir Sin Saltar "   |"
								FinSi
								
							De Otro Modo:
								Escribir Sin Saltar "    "
						FinSegun
						
					7: 
						Segun c Hacer
							6, 7: 
								Escribir Sin Saltar "    "
							13: 
								Escribir Sin Saltar "   X"
							De Otro Modo:
								Escribir Sin Saltar "   |"
						FinSegun
						
					2, 4, 10, 12:
						Segun c Hacer
							6, 7: 
								Escribir Sin Saltar "   |"
							De Otro Modo:
								Escribir Sin Saltar "   X"
						FinSegun
						
					De Otro Modo:
						SI c = 6 o c = 7 Entonces
							Escribir Sin Saltar "   X"
						SiNo
							Escribir Sin Saltar "   X"
						FinSi
				FinSegun
			FinPara
			// si escribibo algo en este espacio (finPara y finPara, puedo usar el lado derecho del tablero)
			
			// ------------------------------------- LATERAL DEL TABLEO
			Si i= 2 Entonces
				Escribir Sin Saltar "          "
				Escribir informePartida[f]
			SiNo
				Escribir ""
			FinSi
			// ----------------------------------- 
			
		FinPara
		
		Segun f Hacer		// Este segun sirve para diferenciar que tipo de linea horizontal debe imprimir para separar las casillas
			5, 8:
				Linea_X_Zona
			6, 7:
				Linea_X_Dado
			13: 
				Linea_X
			De Otro Modo:
				Linea_X_Base
		FinSegun
	FinPara
	// -----------------------------------------------------------------------------------------------------  FIN MOSTRAR TABLERO
FinFuncion



funcion lateral_Tablero(informePartida Por Referencia, f Por Valor, matriz Por Referencia)
	Segun f Hacer
		1: 
			Segun informePartida[f] Hacer
				1: Escribir "Turno del Jugador A"
				2: Escribir "Turno del Jugador B"
				3: Escribir "Turno del Jugador C"
				4: Escribir "Turno del Jugador D"
				De Otro Modo:
					Escribir ""
			FinSegun
			
		2:
			Segun informePartida[f] Hacer
				1: Escribir "Presione ENTER para lanzar el dado"
				2: Escribir "Ha ingresado un numero incorrecto, intente otra vez"
				3: Escribir "Saliendo del juego, ingrese SI para confirmar o NO para volver al juego"
				4: Escribir "Se tira el dado y sale un: " + matriz(7,7)
				De Otro Modo:
					Escribir ""
			FinSegun
			
		5:
			Si informePartida[f] = 1 Entonces
				Escribir "Elija la ficha que va a mover"
			SiNo
				Escribir ""
			FinSi
			
		6:
			Segun informePartida[f] Hacer
				1: Escribir "Ha ingresado un numero incorrecto de ficha, por favor intente otra vez..."
				2: Escribir "Esta ficha no está disponible para mover en este turno"
				De Otro Modo:
					Escribir ""
			FinSegun
		De Otro Modo: Escribir ""
	FinSegun
FinFuncion



Funcion dado <- tirar_Dado (matriz Por Referencia, informePartida Por Referencia, turnoActual Por Referencia, forzar Por Referencia)
	// ------------------------------- Dado
	dado<- Aleatorio(1,6)
	
	Si turnoActual = 2 y forzar = 0 Entonces		// es para forzar que salga 6 para probar
		dado <- 6
		forzar <- 1		// esto va a saltar en el segundo turno
	FinSi		// esto hay q borrarlo, es una prueba
	
	Si dado = 6 Entonces
		informePartida[3] <- "Tiene un turno extra!!"
	FinSi
	
	Segun dado Hacer
		1: matriz(7,7)<-"01"
		2: matriz(7,7)<-"02"
		3: matriz(7,7)<-"03"
		4: matriz(7,7)<-"04"
		5: matriz(7,7)<-"05"
		6: matriz(7,7)<-"06"
	FinSegun
	informePartida[2] <- "Se tira el dado y sale un: " + matriz(7,7)
	// ----------------------------- Fin Dado
FinFuncion



Funcion sortear_Turnos(turnos Por Referencia, cantJugadores Por Valor)
	Definir flag, i Como Entero
	flag <- 0	//La variable "flag", en este caso, sirve para ver si se repitio el numero de jugador (numRandom) en el orden de turnos
	i<-1
	
	Mientras i <= cantJugadores Hacer		// Se sortea el orden de los turnos de cada jugador
		numRandom <- Aleatorio(1,cantJugadores)
		Si i <> 1 Entonces		// El primer numero se coloca directo, luego se chequea que no salga el mismo jugador seleccionado 2 veces
			Para j <- 1 Hasta i-1 Con Paso 1 Hacer
				Si numRandom = turnos[j] Entonces		// Si son iguales , salta la flag para que se sortee de nuevo el numero
					flag <- 1
				FinSi
			FinPara
		FinSi
		Si flag = 0 Entonces		// Si flag es cero, significa que el numRandom actual no está repetido en la lista de turnos
			turnos[i] <- numRandom
			i <- i+1
		FinSi
		flag <- 0
	FinMientras
	
	Escribir "El orden de los turnos es: "
	Para i<-1 Hasta cantJugadores Con Paso 1 Hacer
		Segun turnos[i] Hacer		// Esta "conversion" de numero a texto sirve para informar mejor al usuario, ya que en el tablero no existe Jugador 1 o 2, sino que JA y JB
			1: Escribir i,") JA"
			2: Escribir i,") JB"
			3: Escribir i,") JC"
			4: Escribir i,") JD"
		FinSegun
	FinPara
FinFuncion



Funcion cantJugadores <- definir_Cantidad_Jugadores
	cantJugadores <- 0
	Mientras cantJugadores < 2 o cantJugadores > 4 Hacer		// Elegir la cantidad de jugadores, entre 2 y 4 con validadcion
		Escribir Sin Saltar "Su selección: "
		Leer cantJugadores
		
		Si cantJugadores < 2 o cantJugadores > 4 Entonces
			Escribir "Ha ingresado un numero incorrecto de jugadores, por favor intente otra vez..."
		FinSi
	FinMientras
FinFuncion



Funcion carga_Inicial_Pos_Jugadores(vectorJugador Por Referencia)		// esto inicializa en CERO la posicion de cada ficha de jugador
	Para i <- 1 Hasta 4 Con Paso 1 Hacer
		vectorJugador[i] <- 0
	FinPara
FinFuncion



Funcion encriptar_Casillas(recorridoJA Por Referencia, recorridoJB Por Referencia, recorridoJC Por Referencia, recorridoJD Por Referencia)
	// Cada dimension tiene asignado un espacio de la matriz, el cual corresponde a el numero de casilla que tiene en el recorrido cada jugador
	// Los jugadores pueden recorren 51 casillas, las ultimas 4 (de la 48 a 51) forman parte de la zona segura.
	// Cada una de estas casillas, incluyendo las de la zona segura tiene una posicion en el tablero.
	// cada uno de los vectores contiene la ubicacion donde se encuentra la casila representada por ffcc en donde F es filas y C es columna
	// el numero está encriptado o alterado para facilitar la manipulacion de los datos
	
	// --------------------- INICIO RECORRIDO JUGADOR A
	recorridoJA[1] <- 1612
	recorridoJA[2] <-1613
	recorridoJA[3] <- 1614
	recorridoJA[4] <- 1615
	recorridoJA[5] <- 1616
	recorridoJA[6] <- 1516
	recorridoJA[7] <- 1416
	recorridoJA[8] <- 1316
	recorridoJA[9] <- 1216
	recorridoJA[10] <- 1116
	recorridoJA[11] <- 1117
	recorridoJA[12] <- 1118
	recorridoJA[13] <- 1218
	recorridoJA[14] <- 1318
	recorridoJA[15] <- 1418
	recorridoJA[16] <- 1518
	recorridoJA[17] <- 1618
	recorridoJA[18] <- 1619
	recorridoJA[19] <- 1620
	recorridoJA[20] <- 1621
	recorridoJA[21] <- 1622
	recorridoJA[22] <- 1623
	recorridoJA[23] <- 1723
	recorridoJA[24] <- 1823
	recorridoJA[25] <- 1822
	recorridoJA[26] <- 1821
	recorridoJA[27] <- 1820
	recorridoJA[28] <- 1819
	recorridoJA[29] <- 1818
	recorridoJA[30] <- 1918
	recorridoJA[31] <- 2018
	recorridoJA[32] <- 2118
	recorridoJA[33] <- 2218
	recorridoJA[34] <- 2318
	recorridoJA[35] <- 2317
	recorridoJA[36] <- 2316
	recorridoJA[37] <- 2216
	recorridoJA[38] <- 2116
	recorridoJA[39] <- 2016
	recorridoJA[40] <- 1916
	recorridoJA[41] <- 1816
	recorridoJA[42] <- 1815
	recorridoJA[43] <- 1814
	recorridoJA[44] <- 1813
	recorridoJA[45] <- 1812
	recorridoJA[46] <- 1811
	recorridoJA[47] <- 1711
	recorridoJA[48] <- 1712	// lineas de zona segura
	recorridoJA[49] <- 1713
	recorridoJA[50] <- 1714
	recorridoJA[51] <- 1715
	// --------------------- FIN RECORRIDO JUGADOR A
	
	
	// --------------------- INICIO RECORRIDO JUGADOR B
	recorridoJB[1] <- 1218
	recorridoJB[2] <- 1318
	recorridoJB[3] <- 1418
	recorridoJB[4] <- 1518
	recorridoJB[5] <- 1618
	recorridoJB[6] <- 1619
	recorridoJB[7] <- 1620
	recorridoJB[8] <- 1621
	recorridoJB[9] <- 1622
	recorridoJB[10] <- 1623
	recorridoJB[11] <- 1723
	recorridoJB[12] <- 1823
	recorridoJB[13] <- 1822
	recorridoJB[14] <- 1821
	recorridoJB[15] <- 1820
	recorridoJB[16] <- 1819
	recorridoJB[17] <- 1818
	recorridoJB[18] <- 1918
	recorridoJB[19] <- 2018
	recorridoJB[20] <- 2118
	recorridoJB[21] <- 2218
	recorridoJB[22] <- 2318
	recorridoJB[23] <- 2317
	recorridoJB[24] <- 2316
	recorridoJB[25] <- 2216
	recorridoJB[26] <- 2116
	recorridoJB[27] <- 2016
	recorridoJB[28] <- 1916
	recorridoJB[29] <- 1816
	recorridoJB[30] <- 1815
	recorridoJB[31] <- 1814
	recorridoJB[32] <- 1813
	recorridoJB[33] <- 1812
	recorridoJB[34] <- 1811
	recorridoJB[35] <- 1711
	recorridoJB[36] <- 1611
	recorridoJB[37] <- 1612
	recorridoJB[38] <- 1613
	recorridoJB[39] <- 1614
	recorridoJB[40] <- 1615
	recorridoJB[41] <- 1616
	recorridoJB[42] <- 1516
	recorridoJB[43] <- 1416
	recorridoJB[44] <- 1316
	recorridoJB[45] <- 1216
	recorridoJB[46] <- 1116
	recorridoJB[47] <- 1117
	recorridoJB[48] <- 1217	// lineas de zona segura
	recorridoJB[49] <- 1317
	recorridoJB[50] <- 1417
	recorridoJB[51] <- 1517
	// --------------------- FIN RECORRIDO JUGADOR B
	
	// --------------------- INICIO RECORRIDO JUGADOR C
	recorridoJC[1] <- 2216
	recorridoJC[2] <- 2116
	recorridoJC[3] <- 2016
	recorridoJC[4] <- 1916
	recorridoJC[5] <- 1816
	recorridoJC[6] <- 1815
	recorridoJC[7] <- 1814
	recorridoJC[8] <- 1813
	recorridoJC[9] <- 1812
	recorridoJC[10] <- 1811
	recorridoJC[11] <- 1711
	recorridoJC[12] <- 1611
	recorridoJC[13] <- 1612
	recorridoJC[14] <- 1613
	recorridoJC[15] <- 1614
	recorridoJC[16] <- 1615
	recorridoJC[17] <- 1616
	recorridoJC[18] <- 1516
	recorridoJC[19] <- 1416
	recorridoJC[20] <- 1316
	recorridoJC[21] <- 1216
	recorridoJC[22] <- 1116
	recorridoJC[23] <- 1117
	recorridoJC[24] <- 1118
	recorridoJC[25] <- 1218
	recorridoJC[26] <- 1318
	recorridoJC[27] <- 1418
	recorridoJC[28] <- 1518
	recorridoJC[29] <- 1618
	recorridoJC[30] <- 1619
	recorridoJC[31] <- 1620
	recorridoJC[32] <- 1621
	recorridoJC[33] <- 1622
	recorridoJC[34] <- 1623
	recorridoJC[35] <- 1723
	recorridoJC[36] <- 1823
	recorridoJC[37] <- 1822
	recorridoJC[38] <- 1821
	recorridoJC[39] <- 1820
	recorridoJC[40] <- 1819
	recorridoJC[41] <- 1818
	recorridoJC[42] <- 1918
	recorridoJC[43] <- 2018
	recorridoJC[44] <- 2118
	recorridoJC[45] <- 2218
	recorridoJC[46] <- 2318
	recorridoJC[47] <- 2317
	recorridoJC[48] <- 2217	// lineas de zona segura
	recorridoJC[49] <- 2117
	recorridoJC[50] <- 2017
	recorridoJC[51] <- 1917
	// --------------------- FIN RECORRIDO JUGADOR C
	
	// --------------------- INICIO RECORRIDO JUGADOR D
	recorridoJD[1] <- 1822
	recorridoJD[2] <- 1821
	recorridoJD[3] <- 1820
	recorridoJD[4] <- 1819
	recorridoJD[5] <- 1818
	recorridoJD[6] <- 1918
	recorridoJD[7] <- 2018
	recorridoJD[8] <- 2118
	recorridoJD[9] <- 2218
	recorridoJD[10] <- 2318
	recorridoJD[11] <- 2317
	recorridoJD[12] <- 2316
	recorridoJD[13] <- 2216
	recorridoJD[14] <- 2116
	recorridoJD[15] <- 2016
	recorridoJD[16] <- 1916
	recorridoJD[17] <- 1816
	recorridoJD[18] <- 1815
	recorridoJD[19] <- 1814
	recorridoJD[20] <- 1813
	recorridoJD[21] <- 1812
	recorridoJD[22] <- 1811
	recorridoJD[23] <- 1711
	recorridoJD[24] <- 1611
	recorridoJD[25] <- 1612
	recorridoJD[26] <- 1613
	recorridoJD[27] <- 1614
	recorridoJD[28] <- 1615
	recorridoJD[29] <- 1616
	recorridoJD[30] <- 1516
	recorridoJD[31] <- 1416
	recorridoJD[32] <- 1316
	recorridoJD[33] <- 1216
	recorridoJD[34] <- 1116
	recorridoJD[35] <- 1117
	recorridoJD[36] <- 1118
	recorridoJD[37] <- 1218
	recorridoJD[38] <- 1318
	recorridoJD[39] <- 1418
	recorridoJD[40] <- 1518
	recorridoJD[41] <- 1618
	recorridoJD[42] <- 1619
	recorridoJD[43] <- 1620
	recorridoJD[44] <- 1621
	recorridoJD[45] <- 1622
	recorridoJD[46] <- 1623
	recorridoJD[47] <- 1723
	recorridoJD[48] <- 1722	// lineas de zona segura
	recorridoJD[49] <- 1721
	recorridoJD[50] <- 1720
	recorridoJD[51] <- 1719
	// --------------------- FIN RECORRIDO JUGADOR D
FinFuncion



Funcion carga_Inicial_Matriz(matriz Por Referencia )
	// ---------------------------------------------------------------------------------------------- Carga inicial de la matriz
	Definir f,c Como Entero
	
	Para f <- 1 Hasta 13 Con Paso 1 Hacer		// Todas las posiciones que no tengan ficha inicialmente, se cargan vacias
		Para c <- 1 Hasta 13 Con Paso 1 Hacer
			matriz(f,c) <- "  "
		FinPara
	FinPara
	
	// fila 2, 4, 10 y 12. Estas posiciones de la matriz contienen las fichas originalmente por ser la base o casa
	matriz(2,2)<-"A1"
	//matriz(6,6)<-"A1"
	matriz(2,4)<-"A2"
	//matriz(6,3)<-"A2"
	matriz(4,2)<-"A3"
	matriz(4,4)<-"A4"
	
	matriz(2,10)<-"B1"
	matriz(2,12)<-"B2"
	matriz(4,10)<-"B3"
	matriz(4,12)<-"B4"
	
	matriz(10,2)<-"C1"
	matriz(10,4)<-"C2"
	matriz(12,2)<-"C3"
	matriz(12,4)<-"C4"
	
	matriz(10,10)<-"D1"
	matriz(10,12)<-"D2"
	matriz(12,10)<-"D3"
	matriz(12,12)<-"D4"
	// ---------------------------------------------------------------------------------------------- Fin Carga inicial de la matriz
Fin Funcion



// ------------------------------------------------------ FUNCIONES DE LAS LINEAS QUE SEPARAN LAS FILAS DE LA MATRIZ
Funcion Linea_X_Dado
	Escribir Sin Saltar "X X X X X "
	Para i<-1 Hasta 4 Con paso 1 Hacer
		Para j<-1 hasta 5 Hacer
			Escribir Sin Saltar "- "
		FinPara
	FinPara
	Escribir Sin Saltar "- X X X X "
	Escribir Sin Saltar "X         "
	Escribir Sin Saltar "X X X X X "
	Para i<-1 Hasta 4 Con paso 1 Hacer
		Para j<-1 hasta 5 Hacer
			Escribir Sin Saltar "- "
		FinPara
	FinPara
	Escribir "- X X X X X"
FinFuncion


Funcion Linea_X
	Para i<-1 hasta 65 Hacer
		Escribir Sin Saltar "X "
	FinPara
	Escribir "X"
Fin Funcion


Funcion Linea_X_Zona
	Para i<-1 hasta 30 Hacer
		Escribir Sin Saltar "X "
	FinPara
	Escribir Sin Saltar "- - - - - - "
	Para i<-1 hasta 30 Hacer
		Escribir Sin Saltar "X "
	FinPara
	Escribir ""	
Fin Funcion


Funcion Linea_X_Base
	Escribir Sin Saltar "X"
	Para k<-1 Hasta 2 Con Paso 1 Hacer
		Para i<-1 hasta 9 Hacer
			Escribir Sin Saltar " "
		FinPara
		Escribir Sin Saltar"X X X X X X"
	FinPara
	
	Para i<-1 hasta 9 Hacer
		Escribir Sin Saltar " "
	FinPara
	Escribir Sin Saltar "X X X X X - - - - - - X X X X X "		// Esta linea diferencia la zona segura del resto de casillas jugables
	
	Para i<-1 hasta 8 Hacer
		Escribir Sin Saltar " "
	FinPara
	
	Para k<-1 Hasta 2 Con Paso 1 Hacer
		Escribir Sin Saltar"X X X X X X"
		Para i<-1 hasta 9 Hacer
			Escribir Sin Saltar " "
		FinPara
	FinPara	
	Escribir "X"
FinFuncion
// ------------------------------------------------------ FIN FUNCIONES DE LINEAS QUE SEPARAN LAS FILAS DE LA MATRIZ



Funcion reglas_LUDO
	
	Limpiar Pantalla
	Escribir "******************************************************************************************************************************************"
	Escribir "*********************************************************   INSTRUCCIONES LUDO   *********************************************************"
	Escribir "******************************************************************************************************************************************"
	Escribir "**                                                                                                                                      **"
	Escribir "** REGLAS                                                                                                                               **"
	Escribir "** Juego de 2 a 4 jugadores en donde el objetivo es llevar todas las fichas del jugador a la zona segura.                               **"
	Escribir "**                                                                                                                                      **"
	Escribir "** DADO:                                                                                                                                **"
	Escribir "** Hay un solo dado de seis caras                                                                                                       **"
	Escribir "** El numero que salga al tirar el dado será la cantidad de casillas que el jugador podrá avanzar en ese turno con una ficha.           **"
	Escribir "** Si el dado es 6, el jugador tiene un turno extra y se le dará la opción para sacar una ficha de la casa y colocarla en el tablero.   **"
	Escribir "**                                                                                                                                      **"
	Escribir "** MOVIMIENTOS:                                                                                                                         **"
	Escribir "** Cuando se tira el dado, se dará la opción para elegir que ficha mover, siempre y cuando haya mas de una ficha disponible para mover. **"
	Escribir "** Si tu ficha cae sobre la posición exacta en donde hay una de otro jugador, la capturarás y devolverás a su casa.                     **"
	Escribir "** No puedes colocar más de una ficha en la misma casilla.                                                                              **"
	Escribir "**                                                                                                                                      **"
	Escribir "** GANAR LA PARTIDA                                                                                                                     **"
	Escribir "** Para ganar la partida, el jugador deberá alinear sus 4 fichas en las casillas indicadas como su zona segura, dentro del tablero.     **"
	Escribir "**                                                                                                                                      **"
	Escribir "** SALIR DE LA PARTIDA                                                                                                                  **"
	Escribir "** SI desea salir del juego, escriba SALIR y presione < ENTER >, cuando se le pida tirar el dado.                                       **"
	Escribir "**                                                                                                                                      **"
	Escribir "**                                                                                                                                      **"
	Escribir "** Presione una tecla para iniciar el juego                                                                                             **"
	Escribir "******************************************************************************************************************************************"
	Escribir "******************************************************************************************************************************************"
	Esperar Tecla
	Limpiar Pantalla
FinFuncion

//################################################### FIN DE LAS FUNCIONES LUDO ########################################################
//########################################################################################################################################





//################################################### INICIO DE LA PORTADA Y MENU ########################################################
//########################################################################################################################################
Funcion caratula <- dibujarportada(portada Por Referencia)
	portada[1]<- '############################################################################################################################'
	portada[2]<- '############################################################################################################################'
	portada[3]<- '##                                                                                                                        ##'
	portada[4]<- '##                                                  ####    ####    ####                                                  ##'
	portada[5]<- '##                                                  #####   ####   #####                                                  ##'
	portada[6]<- '##                                                   #####  ####  #####                                                   ##'
	portada[7]<- '##                                                     #### #### ####                                                     ##'
	portada[8]<- '##                                                      ############                                                      ##' 
	portada[9]<- '##                                                  ####################                                                  ##'
	portada[10]<-'##                                                  ####################                                                  ##'
	portada[11]<-'##                                                      ############                                                      ##'
	portada[12]<-'##                                                     #### #### ####                                                     ##'
	portada[13]<-'##                                                   #####  ####  #####                                                   ##'
	portada[14]<-'##                                                  #####   ####   #####                                                  ##'
	portada[15]<-'##                                                  ####    ####    ####                                                  ##'
	portada[16]<-'##                                                  #   #  #####  ##   #                                                  ##'
	portada[17]<-'##                                                  #   #    #    # #  #                                                  ##'
	portada[18]<-'##                                                  #   #    #    #  # #                                                  ##'
	portada[19]<-'##                                                   ###     #    #   ##                                                  ##'
	portada[20]<-'##                                                                                                                        ##'
	portada[21]<-'##                                             UNIVERSIDAD TECNOLOGICA NACIONAL                                           ##'
	portada[22]<-'##                                               INSTITUTO NACIONAL SUPERIOR                                              ##'
	portada[23]<-'##                                                 DEL PROFESORADO TECNICO                                                ##'
	portada[24]<-'##                                                                                                                        ##'
	portada[25]<-'##                                             PROYECTO: JUEGOS DE MESA                                                   ##'
	portada[26]<-'##                                                                                                                        ##'
	portada[27]<-'##                                             AUTORES:  RODRIGUEZ CHRISTIAN                                              ##' 
	portada[28]<-'##                                                        SPADONI AGUSTIN                                                 ##'
	portada[29]<-'##                                                         MARCELO MEJIA                                                  ##'
	portada[30]<-'##                                                                                                                        ##'
	portada[31]<-'##                                             DOCENTES: ITHURRALDE PAULA Y SILVA MIGUEL                                  ##'
	portada[32]<-'##                                                                                                                        ##'
	portada[33]<-'##  Presione cualquier tecla para continuar . . .                                                                         ##'
	portada[34]<-'############################################################################################################################'
    portada[35]<-'############################################################################################################################'
	Para i<-1 Hasta 35 Con Paso 1 Hacer
		Escribir portada[i]
	Fin Para
Fin Funcion

Funcion caratula <- dibujarmenu(menu Por Referencia)
	Limpiar Pantalla
	menu[1]<- '############################################################################################################################'
	menu[2]<- '############################################################################################################################'
	menu[3]<- '##                                                                                                                        ##'
	menu[4]<- '##  #   #  #####  ##   #                                                                                                  ##'
	menu[5]<- '##  #   #    #    # #  #                                                                                                  ##'
	menu[6]<- '##   ###     #    #   ##                                                                                                  ##'
	menu[7]<- '##                                                                                                                        ##'
	menu[8]<- '##                  #  #   #  ####   ####   ###    ####    ## #   ####     #       #  ####   ####   ####                  ##'
	menu[9]<- '##                  #  #   #  #     #      #   #  #        #   #  #        # #   # #  #     #      #    #                 ##'
	menu[10]<-'##              #   #  #   #  ###   # ###  #   #  ####     #   #  ###      #   #   #  ###   ####   ######                 ##'
	menu[11]<-'##              #   #  #   #  #     #   #  #   #      #    #   #  #        #       #  #         #  #    #                 ##'
	menu[12]<-'##               ###    ###   ####   ###    ###   ####     ## #   ####     #       #  ####  ####   #    #                 ##'
	menu[13]<-'##                                                                                                                        ##'
	menu[14]<-'##                    DAMAS                              TATETI                               LUDO                        ##'
	menu[15]<-'##               ___ ___ ___ ___                                                        ___ _________ ___                 ##'
	menu[16]<-'##              |   | O |   | O |                      X |    | O                      | . | . ||| . | . |                ##'
	menu[17]<-'##              |---|---|---|---|                     ---|----|---                     | .   . ||| .   . |                ##'
	menu[18]<-'##              |_O_|___|_O_|___|                        |  X |                        |-------|||-------|                ##'
	menu[19]<-'##              |   | O |   | O |                     ---|----|---                     |-------|||-------|                ##'
	menu[20]<-'##              |---|---|---|---|                      O |    | X                      | .   . ||| .   . |                ##'
	menu[21]<-'##              |_O_|___|_O_|___|                                                      | .   . ||| .   . |                ##'
	menu[22]<-'##                                                                                     |___|___|||___|___|                ##'
	menu[23]<-'##                                                                                                                        ##'
	menu[24]<-'##                      1                                  2                                    3                         ##'
	menu[25]<-'##                                                                                                                        ##'
	menu[26]<-'##                                                                                                                        ##'
	menu[27]<-'##  Ingrese El Numero del juego para jugar                                                                                ##'
	menu[28]<-'##                                                                                                                        ##'
	menu[29]<-'############################################################################################################################'
	menu[30]<-'############################################################################################################################' 
	
	Para i<-1 Hasta 30 Con Paso 1 Hacer
		Escribir menu[i]
	Fin Para
	num_juego <- 0
	Leer num_juego
	
	Repetir
		Si num_juego > 3 o num_juego < 1 Entonces
			Limpiar Pantalla
			menu[27]<-'##  Ha ingresado un Numero de Juego INCORRECTO, intente otra vez                                                          ##'
			Para i<-1 Hasta 30 Con Paso 1 Hacer
				Escribir menu[i]
			Fin Para
			Leer num_juego
		FinSi
	Hasta Que (num_juego > 0 y num_juego < 4)
	
	Limpiar Pantalla
	
	Segun num_juego Hacer
		1:
			juego_DAMAS
		2:
			juego_TATETI
		3:
			juego_LUDO
	Fin Segun
	
	Escribir 'Desea volver al menu de juegos? (SI o NO), Para iniciar otra partida o elegir otro juego.'
	Leer volver
	Si volver = 'SI' Entonces
		caratula<-dibujarmenu(menu)
	SiNo
		Limpiar Pantalla
		Escribir'################################################################################################################'
		Escribir'##                                                                                                            ##'
		Escribir'##      ####  ####    ###    ###  #   ###    ####    ###   ###  ####        #  #   #   ####   ###   ####      ##'
		Escribir'##     #      #   #  #   #  #     #  #   #  #       #   # #   # #   #       #  #   #  #      #   #  #   #     ##'
		Escribir'##     # ###  ####   #####  #     #  #####  ####    ####  #   # ####    #   #  #   #  # ###  #####  ####      ##'
		Escribir'##     #   #  #  #   #   #  #     #  #   #      #   #     #   # #  #    #   #  #   #  #   #  #   #  #  #      ##'
		Escribir'##      ###   #   #  #   #   ###  #  #   #  ####    #      ###  #   #    ###    ###    ###   #   #  #   #     ##'
		Escribir'##                                                                                                            ##'
		Escribir'################################################################################################################'
	FinSi
	
Fin Funcion
//################################################### FIN DE LA PORTADA Y MENU ########################################################
//########################################################################################################################################



//################## "INICIO DEL JUEGO DE DAMAS OPC: 1" #################################

Funcion juego_DAMAS
	//Escribir 'Ingresaste al juego DAMAS'
	//################## VARIABLES DEFINIDAS DE DAMAS #################################
	definir contA,contB,seguirJugando como entero
	dimension damas[17,17]
	//################## VARIABLES DEFINIDAS DE DAMAS #################################
	cargarTablero(damas)
	escribir "************************************************************************************************************************************"
	escribir "***************************************************   TABLERO DE DAMAS   ***********************************************************"
	escribir "************************************************************************************************************************************"
	escribir "**                                                                                                                                **"
	escribir "**    -CADA JUGADOR VA REALIZAR SUS MOVIMIENTOS CON TECLAS DISTINTAS                                                              **"
	ESCRIBIR "**    _PARA JUGADOR A:                                      PARA JUGADOR B:                                                       **"
	escribir "**    _W(diagonal arriba derecha)                           O(diagonal arriba derecha)                                            **"
	escribir "**    _S (diagonal abajo derecha)                           L (diagonal abajo derecha)                                            **"
	escribir "**    _A(diagonal abajo izquierda)                          K(diagonal abajo izquierda)                                           **"
	escribir "**    _Q (diagonal arriba izquierda)                        I (diagonal arriba izquierda)                                         **"
	escribir "**                                                                                                                                **"
	escribir "**    -LOS JUGADORES SELECCIONAN LA FICHA SIMPLEMENTE COLOCANDO EL NUMERO DE LA FICHA CORRESPONDIENTE EN SU TURNO                 **"
	escribir "**                                                                                                                                **"
	escribir "**    -LOS JUGADORES SON LLAMADOS A Y B                                                                                           **" 
	escribir "**                                                                                                                                **"
	escribir "**    -PARA SALIR DEL JUEGO, CUALQUIER JUGADOR PUEDE APRETAR 0 EN LA SELECCION DE SU FICHA...                                     **"
	escribir "**                                                                                                                                **"
	escribir "**    -EN CASO DE QUE ALGUNO DESEE TERMINAR CON LA PARTIDA AL FINAL SE PONDRA UN GANADOR DEPENDIENDO QUIEN HAYA COMIDO MAS FICHAS **"
	escribir "**                                                                                                                                **"
	escribir "**    ¡¡BUENA SUERTE PARA AMBOS !!                                                                                                **"
	escribir "**                                                                                                                                **"
	escribir "**                                                                                                                                **"
	escribir "**     Presione cualquier tecla para continuar . . .                                                                              **"
	escribir "************************************************************************************************************************************"
	Esperar Tecla
	Repetir
		Limpiar Pantalla
		escribir "**TURNO JUGADOR A**"
		mostrarTablero(damas)
		//CONTA SE ENCARGA DE CONTAR LA CANTIDAD DE FICHAS QUE COMA EL JUGADOR "A", SEGUIR JUGANDO HACE REFERENCIA A LA OPCION EN LA FICHA , EN TAL CASO DE QUE EL JUGADOR QUIERA ABANDONAR
		movimientosA(damas,contA,seguirJugando)
		mostrarTablero(damas)
		Limpiar Pantalla
		Si seguirJugando=0 Y contA<12 Y contB<12 Entonces
			escribir "**TURNO JUGADOR B**"
			mostrarTablero(damas)
			movimientosB(damas,contB,seguirJugando)
			mostrarTablero(damas)
		Fin Si
	Hasta Que seguirJugando<>0 O contA=12 O contB=12
	Limpiar Pantalla
	Si contB=12 Entonces
		escribir "GANADOR JUGADOR B!" 
	SiNo
		Si contA=12 Entonces
			escribir "GANADOR JUGADOR A!"
		SiNo
			Si seguirJugando<>0 Entonces
				Si contB>contA Entonces
					Escribir "GANADOR JUGADOR B CON ",contB," FICHAS COMIDAS"
				SiNo
					Si contA>contB Entonces
						escribir "GANADOR JUGADOR A CON ",contA," FICHAS COMIDAS"
					SiNo
						escribir "EMPATARON !" 
					Fin Si
				Fin Si
				
			Fin Si
		Fin Si
	Fin Si
FinFuncion

//################## "FIN DEL JUEGO DE DAMAS OPC: 1" #################################



//################## "INICIO DEL JUEGO TATETI OPC: 2" #################################
Funcion juego_TATETI
	//################## VARIABLES DEFINIDAS DE TATETI #################################
	Definir fila, columna, rondas, numRonda, hayganador Como Entero
	Definir tablero_x_o, dato, ultimo_ingreso Como caracter
	// Declarar una variable global para almacenar el turno anterior
	Definir turnoAnterior Como Caracter
	//################## VARIABLES DEFINIDAS DE TATETI #################################
	
	// Inicializar la variable de turno anterior antes de comenzar el juego
	turnoAnterior<-''
	
	rondas<-9; numRonda<-0; hayganador<-0; jugador<-1;
	fila<-3; columna<-3;
	Dimension tablero_x_o[fila,columna]
	Escribir "***********************************************************************************************************************************"
	Escribir "***************************************************  TABLERO DE TATETI  ***********************************************************"
	Escribir "***********************************************************************************************************************************"
	Escribir "**                                                                                                                               **"
	Escribir "**    CADA JUGADOR EN SU TURNO DEBERA ELEGIR UN NUMERO DE POSICION                                                               **"
	Escribir "**    UNA VEZ QUE SE ELIGE LA POSICION, PODRA INGRESAR X o O                                                                     **"
	Escribir "**    SOLO PUEDE EXITIR UN GANADOR CUANDO SE LOGRA COMPLETAR EL TRIO DE X-X-X o O-O-O, DE MANERA HORIZONTAL, VERTICAL Y DIAGONAL **"
	Escribir "**                                                                                                                               **"
	Escribir "**    Presione cualquier tecla para continuar . . .                                                                              **"
	Escribir "***********************************************************************************************************************************"
	Esperar Tecla
	Limpiar Pantalla
	inicializartablero(tablero_x_o,fila,columna)
	
	Mientras numRonda<rondas Y hayganador=0 Hacer
		//AGREGAR Limpiar Pantalla
		Limpiar Pantalla
		Escribir''
		Escribir'##                   #####    #    #####  ####  #####  #                   ##'
		Escribir'##                     #    # # #    #    ##      #    #                   ##'
		Escribir'##                     #    #   #    #    ####    #    #                   ##'
		Escribir''
		Escribir 'Turno del jugador ',jugador,' indique la posicion';
		
		dibujartablero(tablero_x_o,fila)
		dato<-jugarjugador(tablero_x_o,fila,columna,turnoAnterior)
		
		hayganador<-chequearganador(tablero_x_o,fila,columna)
		numRonda<-numRonda+1;
		si jugador = 1 Entonces
			jugador<-2
		SiNo
			jugador<-1
		FinSi
		turnoAnterior<-dato
	Fin Mientras
	
	Si hayganador =1 Entonces
		
	FinSi
FinFuncion

//##################  "FIN DEL JUEGO TATETI OPC: 2"  #################################




//##################  "INICIO DEL JUEGO LUDO OPC: 3"  #################################

Funcion juego_LUDO
	//################################### VARIABLES DEFINIDAS DE LUDO ################################################
	Definir f, c Como Entero		// Variables de iteración especificas, F para la fila y C para columna
	Definir j, k Como Entero		// Variables de iteracion para control general y recorer Variables Dimensionales
	Definir dado Como Entero	// Variable que contendrá el valor Aleatorio del dado (entre 1 y 6)
	Definir ficha Como Entero
	Definir gandorLudo Como Entero
	Definir matriz Como Caracter
	Dimension matriz[13,13]
	
	Definir JA, JB, JC, JD Como Entero
	Dimension JA[4], JB[4], JC[4], JD[4]
	
	// Variables de control
	Definir cantJugadores como Entero		// Variable que sirve para definir los jugadores de la partida y cantidad de turnos
	Definir numRandom como Entero	// Variable utilizada para guardar numeros aleatorios
	Definir flag como Entero	// variable bandera utilizada para validar ciertos procesos, como numeros repetidos
	Definir fichaCapturada Como Caracter // esto sirve para indicar que se capturó una ficha en el turno
	Dimension turnos[4]
	Definir turnoActual Como Entero 	// variable para iterar en turnos
	// fin var control
	
	Definir forzar Como Entero
	
	Dimension informePartida[13]		// Acá se guarda texto importante para los jugadores, como el turno de quien es, que ficha se mueve e instrucciones
	
	//Dimension casillas[48] // vector el cual contendrá el un numero de 4 digitos (ffcc) en donde f es numero de Fila  c numero de Columna
	Dimension recorridoJA[51], recorridoJB[51], recorridoJC[51], recorridoJD[51]
	// Estas dimensiones (vectores) contienen la posicion en la matriz de cada casilla por la que el jugador pasa, 
	// dichas posiciones contendrán un numero de 4 digitos (ffcc) en donde f es numero de Fila  c numero de Columna (este numero de 4 digitos representa la posicion de la casilla dentro de la matriz del tablero)
	//################################### FIN VARIABLES DEFINIDAS DE LUDO ################################################
	
	// ----------------------------------------------------------------------------------- Inicio del programa
	forzar <- 0		// variable de prueba para forzar que salga un 6 y avance el juego
	fichaCapturada <- "  "
	carga_Inicial_Matriz(matriz)		// Carga inicial de la matriz del tablero
	encriptar_Casillas(recorridoJA, recorridoJB, recorridoJC, recorridoJD)		// Estos vectores sirve para "traducir" las posiciones de la matriz a numero de casillas de cada jugador
	
	carga_Inicial_Pos_Jugadores(JA)		// se inicializan los vectores en CERO
	carga_Inicial_Pos_Jugadores(JB)
	carga_Inicial_Pos_Jugadores(JC)
	carga_Inicial_Pos_Jugadores(JD)
	
	// Verifica que ganar existe
//	JA[1] <- 1715
//	matriz(7,5) <- "A1"
//	JA[2] <- 1714
//	matriz(7,4) <- "A2"
//	JA[3] <- 1713
//	matriz(7,3) <- "A3"
//	JA[4] <- 1815
//	matriz(8,5) <- "A4"
	
	reglas_LUDO
	Escribir "Bienvenido al Ludo, por favor indique el numero de jugadores"
	Escribir "> Ingrese un numero del 2 al 4"
	
	cantJugadores <- definir_Cantidad_Jugadores		// Funcion que sirve para consultar la cantidad de jugadores que participarán en esta partida
	
	Escribir "A continuación se sortea el orden de los turnos..."
	
	sortear_Turnos(turnos, cantJugadores)		// Funcion que sirve para sortear el orden de los turnos entre los jugadores
	Escribir "Presione una tecla para iniciar la partida"
	Esperar Tecla
	Limpiar Pantalla
	// ------------------------------------------------------------------------------------ FIn pasos iniciales
	
	Mientras juegoFin = 0 Hacer	// loop para que no termine el programa y siga el juego
		
		Para turnoActual <- 1 Hasta cantJugadores Con Paso 1 Hacer  	// lleva la cuenta el turno de quien es realmente (ciclo de turnos)
			
			inicio_Turno(turnos[turnoActual], informePartida)		// muestra mensaje con el nombre del jugador al qe le toca este turno. Esta funcion marca el inicio del turno de cada jugador
			Limpiar Pantalla
			mostrar_Tablero_LUDO(matriz, informePartida) // Muestra el Tablero esperando que se lance el dado
			
			juegoFin <- opc_Menu(matriz, informePartida)
			
			
			SI juegoFin = 0 Entonces		// cada vez que comienza el turno de un jugador, se da la opcion de tirar el dado o que se cierre el JUEGO
				dado <- tirar_Dado(matriz, informePartida, turnoActual, forzar)		// FORZAR es una variable de prueba para forzar que salga un 6 y avance el juego
				//Limpiar Pantalla
				//mostrar_Tablero_LUDO(matriz, informePartida) // Se actualiza el tablero, mostrando el valor del dado
				
				Segun turnos[turnoActual] Hacer		// Pasa a un gestor de fichas la informacion del jugador y el dado para que mueva una ficha. En esta función, se define o elige que ficha se va a mover
					1: 
						ficha <- gestor_Fichas(JA, recorridoJA, dado, matriz, informePartida)
					2: 
						ficha <- gestor_Fichas(JB, recorridoJB, dado, matriz, informePartida)
					3: 
						ficha <- gestor_Fichas(JC, recorridoJC, dado, matriz, informePartida)
					4: 
						ficha <- gestor_Fichas(JD, recorridoJD, dado, matriz, informePartida)
				FinSegun
				
				Si ficha > 0 Entonces		// esto es para que permita visualizar bien que no se movió ninguna ficha
					Limpiar Pantalla
					mostrar_Tablero_Ludo(matriz, informePartida)
					Esperar 1 Segundo
				SiNo
					Esperar 500 Milisegundos
					Limpiar Pantalla
					mostrar_Tablero_Ludo(matriz, informePartida)
					Esperar 500 Milisegundos
				FinSi
				
				Si ficha > 0 Entonces		// Solo entra si ficha tiene algun valor sensato (del 1 al 4)
					Segun turnos[turnoActual] Hacer		// aca se hace el movimiento de la ficha, ver como verificar si cae sobre una ficha de otr jugador, para capturarla
						1: 
							fichaCapturada <- mover_Ficha(1, JA, ficha, recorridoJA, dado, matriz, informePartida)
						2: 
							fichaCapturada <- mover_Ficha(2, JB, ficha, recorridoJB, dado, matriz, informePartida)
						3: 
							fichaCapturada <- mover_Ficha(3, JC, ficha, recorridoJC, dado, matriz, informePartida)
						4: 
							fichaCapturada <- mover_Ficha(4, JD, ficha, recorridoJD, dado, matriz, informePartida)
					FinSegun		// esto deberia estar en un LOOP esperando a que se valide el movimiento, ya que si muevo una ficha que cae fuera del tablero deberia pedir q elija otra
				FinSi
				
				Si fichaCapturada <> "  " y ficha > 0 Entonces		// si el texto es distinto de un espacio en blanco, quiere decir que la ficha de este jugador capturó a la de otro
					Segun turnos[turnoActual] Hacer
						1: 
							buscar_Ficha_Capturada(JA[ficha], JB, 2, matriz, ficha, informePartida, fichaCapturada)
							buscar_Ficha_Capturada(JA[ficha], JC, 3, matriz, ficha, informePartida, fichaCapturada)
							buscar_Ficha_Capturada(JA[ficha], JD, 4, matriz, ficha, informePartida, fichaCapturada)
						2:
							buscar_Ficha_Capturada(JB[ficha], JA, 1, matriz, ficha, informePartida, fichaCapturada)
							buscar_Ficha_Capturada(JB[ficha], JC, 3, matriz, ficha, informePartida, fichaCapturada)
							buscar_Ficha_Capturada(JB[ficha], JD, 4, matriz, ficha, informePartida, fichaCapturada)
						3:
							buscar_Ficha_Capturada(JC[ficha], JA, 1, matriz, ficha, informePartida, fichaCapturada)
							buscar_Ficha_Capturada(JC[ficha], JB, 2, matriz, ficha, informePartida, fichaCapturada)
							buscar_Ficha_Capturada(JC[ficha], JD, 4, matriz, ficha, informePartida, fichaCapturada)
						4:
							buscar_Ficha_Capturada(JD[ficha], JA, 1, matriz, ficha, informePartida, fichaCapturada)
							buscar_Ficha_Capturada(JD[ficha], JB, 2, matriz, ficha, informePartida, fichaCapturada)
							buscar_Ficha_Capturada(JD[ficha], JC, 3, matriz, ficha, informePartida, fichaCapturada)
					FinSegun
					Limpiar Pantalla
					mostrar_Tablero_LUDO(matriz, informePartida) // Se actualiza el tablero, mostrando el valor del dado
					Esperar 500 Milisegundos
				FinSi
				
				Si ficha > 0 Entonces
					Segun turnos[turnoActual] Hacer
						1:
							gandorLudo <- chequear_Si_Jugador_Gana(JA, recorridoJA, juegoFin, turnos[turnoActual])
						2:
							gandorLudo <- chequear_Si_Jugador_Gana(JB, recorridoJB, juegoFin, turnos[turnoActual])
						3:
							gandorLudo <- chequear_Si_Jugador_Gana(JC, recorridoJC, juegoFin, turnos[turnoActual])
						4:
							gandorLudo <- chequear_Si_Jugador_Gana(JD, recorridoJD, juegoFin, turnos[turnoActual])
					FinSegun
				FinSi
				
				Esperar 1 Segundos
				matriz(7,7)<-"  "		// vacio el espacio del dado
				
				Para i<-1 hasta 13 Con Paso 1 Hacer
					informePartida[i] <- "  "	// pongo cero para que no se imprima nada al lateral del tablero
				FinPara
				fichaCapturada <- "  "		// se resetea la ficha capturada, para que no haya errores en el proximo turno
			FinSi
			
			Si juegoFin = 1 Entonces		// si gana alguiuen o el juego termina, dejo de pasar turnos y salgo de la partida
				//Esperar 1 Segundos
				Limpiar Pantalla
				Si gandorLudo <> 0 Entonces
					Escribir Sin Saltar"El jugador"
					Segun turnos[turnoActual] Hacer
						1: Escribir Sin Saltar" A "
						2: Escribir Sin Saltar" B "
						3: Escribir Sin Saltar" C "
						4: Escribir Sin Saltar" D "
					FinSegun
					Escribir "GANA la partida"
				FinSi
				turnoActual <- 100
			FinSi
			
			Si dado = 6 Entonces
				turnoActual <- turnoActual - 1	// si el jugador saca un 6, tiene un turno extra
			FinSi
		FinPara
	FinMientras
	// FIN LUDO
FinFuncion

//##################  "FIN DEL JUEGO LUDO OPC: 3"  #################################



Algoritmo portada_y_menu
	//caratula
	Definir num_juego Como Entero
	Definir portada, ingreso, menu_juegos, volver Como Caracter
	Dimension portada[35]
	Dimension menu[30]
	
	caratula<-dibujarportada(portada)
	
	Esperar Tecla
	//Limpiar Pantalla
	caratula<-dibujarmenu(menu)
FinAlgoritmo
