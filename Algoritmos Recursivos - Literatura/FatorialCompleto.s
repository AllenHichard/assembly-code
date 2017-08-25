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
	
	
main:		movi r9, 5
		movi r1, 1
		push r9
		call fatorial
		br end
fatorial:
	beq r9, r1, final
	subi r9, r9, 1
	push ra
	push r9
	call fatorial
	pop r9
	mov r10, r9
	pop ra
	pop r9
	mul r9, r10, r9
	push r9
	ret 
final:
	ret 
end:    	
	

	
	
	
	
	
	
	
	

