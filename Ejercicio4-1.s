/*
Titulo: Ejercicio 1 Capitulo 4
Autor: Dennis Axel Ruiz Ochoa

*/
.data

cadena: .asciz "Hola Mundo!\n"
cadenafin:

.text
.global main

main:	push	{r7,	lr}			//Preserva reg
	mov	r0,	#1			//salida estandar
	ldr	r1,	=cadena			//cadena a enviar
	mov	r2,	#cadenafin-cadena	//longitud
	mov	r7,	#4			//seleciona la
	swi	#0				//llamada a sistema write
	mov	r0,	#0			//devolvemos ok
	pop	{r7,	lr}			//recuperamos reg
	bx	lr
