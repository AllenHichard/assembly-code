.macro push reg
    subi sp, sp, 4
    stw \reg,  0(sp)
.endm

.macro pop reg
    ldw \reg,  0(sp)
    addi sp, sp, 4
.endm    
 
.data

sequencia:	.word 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0

.text

main: 		movia r7, sequencia
		movi r6, 14
		movi r2, 1 #Condicao de parada


atualizar:	addi r5, r5, 1 
		stw r3, 0(r7)
    		addi r7, r7, 4
		ble r5, r6, calcular
		br end
calcular:
    		mov r1, r5
    		movi r3, 0 #Resultado
    		push r1
    		call fibonacci
    		br atualizar
    	
fibonacci:
    		pop r1
    		ble r1, r2, if
    		push ra
    		subi r4, r1, 1
    		push r4
    		subi r4, r1, 2
    		push r4
    		call fibonacci
    		call fibonacci
    		pop ra
    		ret
    
if:
    	add r3, r3, r1
    	ret
end:
	
	
	
