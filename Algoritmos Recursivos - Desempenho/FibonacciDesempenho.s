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
		movi r1, 0
		movi r2, 1
		call fibonacci
		br end

fibonacci:
		beq r4, r6, if
		addi r4, r4, 1
		add r3, r1, r2
		mov r1 , r2
		mov r2 , r3
		addi r7, r7, 4
		stw r1 , 0(r7)
		push ra
		call fibonacci
		pop ra
		ret
if:
    	ret
end:
	
	
	
