###############################################
# Example: counter.s
# Countdown from 10000 to 0
###############################################

		.data

counter:	.word 6,5,4,3,2,1

		.text
main:		movia r1, counter #para guardar a posicao final
		addi r1, r1, 20
		movia r2, counter #para guardar o j atual
		movi r4, 6 #Tamanho do vetor
		
		
while1:		addi r5, r5, 1 #r5 = contador i
		bge r5 , r4 , end #bge >=
			mov r6, r4 #r6 = contador j
			mov r2, r1

while2:				subi r6, r6, 1
				blt r6, r5, while1 # j < i retorn
				#ldw r10, 0(r2)
				#mov r2, r1 # pega os valores para comparar
				ldw r12, 0(r2)
				subi r2, r2, 4 
				ldw r11, 0(r2)		
				
if:				ble r11, r12, while2
				mov r13 , r11 # efetua a troca na memória
				stw r12 , 0(r2) 
				addi r2, r2, 4
				stw r13 , 0(r2)
				subi r2, r2, 4  			
				br while2
					
end:		
		
