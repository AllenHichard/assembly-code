###############################################
# Example: fatorial
# Execulta a fatorial de forma recursiva
###############################################

		
main:		movi r1 , 2 #base
		movi r2 , 20 #expoente
		or r6, r1, r2
		beq r6 , r0, fatalErro
		movi r3, 1 #result
		
while:		beq r2 , r0, end
		subi r2, r2, 1
		mul r3, r3, r1 		
		br while

fatalErro: 	movi r3, -1   
		
end:		
		


					
		
	

	

	
	

