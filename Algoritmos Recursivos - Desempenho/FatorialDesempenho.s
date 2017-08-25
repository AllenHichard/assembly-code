###############################################
# Example: fatorial recursivo
# O resultado de cada recursão se encontra presente na memória
###############################################

.macro	push reg
	subi	sp, sp, 4
	stw	\reg, 0(sp)
.endm

.macro	pop reg
	ldw \reg, 0(sp)
	addi sp, sp, 4
.endm
	
	
main:		movi r9, 5 # numero do fatorial
		mov r1, r9
		movi r2, 1
		call fatorial
		br end
		
fatorial:	beq r1, r2, if
		subi r1, r1, 1
		mul r9, r9, r1
		push ra
		call fatorial
		pop ra
		ret
	
if:
	ret 
end:    	
	

	
	
	
	
	
	
	

