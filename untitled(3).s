inicio:
						
						mov		r0, #200 
						mov		r1, #0 
						mov		r2, #0 
						mov		r3, #0 
						
						
						mov		r5,#0
						
						
						B		Fin_Frase
						

						

						
Fin_Frase:
						
						add		r2,r2,#1
						
						ldr		r6,[r2]
						
						cmp		r6,r5
						bne		Fin_Frase
						sub		r2,r2,#1
						sub		r3,r3,#1
						beq		Analizar_Palabra_Frase
						
Analizar_Palabra_Frase:
						
						add		r3,r3,#1
						ldr		r6,[r3]
						
						
						cmp		r6,#32
						bne		verificar_vocales
						
						cmp		r5,#3
						beq		cambiar_vocales
						cmp		r5,#4
						beq		cambiar_vocales
						cmp		r5,#5
						beq		cambiar_vocales
						cmp		r5,#6
						beq		cambiar_vocales
						cmp		r5,#7
						beq		cambiar_vocales
						
						
						mov		r1,r3
						mov		r5,#0
						
						
						
						bne		Analizar_Palabra_Frase
						
verificar_vocales:
						cmp		r6,#0
						beq		ultima_palabra
						cmp		r6,#65
						beq		Sumar_Contador_Vocales
						cmp		r6,#69
						beq		Sumar_Contador_Vocales
						cmp		r6,#73
						beq		Sumar_Contador_Vocales
						cmp		r6,#79
						beq		Sumar_Contador_Vocales
						cmp		r6,#85
						beq		Sumar_Contador_Vocales
						bne		Analizar_Palabra_Frase
						
Sumar_Contador_Vocales:
						add		r5,r5,#1
						b		Analizar_Palabra_Frase
						
						
ultima_palabra:
						
						cmp		r5,#3
						beq		cambiar_vocales
						cmp		r5,#4
						beq		cambiar_vocales
						cmp		r5,#5
						beq		cambiar_vocales
						cmp		r5,#6
						beq		cambiar_vocales
						cmp		r5,#7
						beq		cambiar_vocales
						
						b		Fin
						
cambiar_vocales:
						
						add		r1,r1,#1
						ldr		r6,[r1]
						cmp		r6,#32
						bne		Verificar_Vocal_Para_Cambiar
						mov		r5,#0
						
						b		Analizar_Palabra_Frase
						
Verificar_Vocal_Para_Cambiar:
						cmp		r6,#0
						beq		Fin
						cmp		r6,#65
						beq		cambiar
						cmp		r6,#69
						beq		cambiar
						cmp		r6,#73
						beq		cambiar
						cmp		r6,#79
						beq		cambiar
						cmp		r6,#85
						beq		cambiar
						bne		cambiar_vocales
						
cambiar:
						ldr		r7,[r0]
						str		r7,[r1]
						b		cambiar_vocales
						
						
Fin:
	