#####################################################
# Example: Sequência de números primos              #
# Apartir de uma entrada serial, o algoritmo mostra #
# uma sequência de números primos. Exemplo: caso o  #
# usuário informe 10, irá mostrar 10 números primos #
#####################################################
 
#####################################################
# Exemplo do algoritmo em uma linguaguem alto nível #
# int main(){					    #	
#	int primos[10];                             #
#	int qtdPrimo = 10, seqPrimo = 0, i = 1, j;  #	
#	while(seqPrimo < qtdPrimo){		    #
#		i++; j = 2;			    #
#		while(j < i){			    #
#			if(i % j == 0)break;        #
#			j++;                        #
#		if(j == i){                         #
#			primos[seqPrimo] = i;       #
#			seqPrimo++;                 #
#		}				    #
#	}                                           #
#	i = 0;                                      #
#	while(i<10){                                #
#		printf("%d\n", primos[i]);          #
#		i++;                                #
#	}                                           #
#}                                                  #
##################################################### 

		.data 				#Primitiva para inicializar valores
primos:	        .word 0,0,0,0,0,0,0,0,0,0 	#Inicialização do vetor de 10 posições
		.text 				#Primitiva que indica o início do código

main:		movia r10, primos 		#r10 aponta para o vetor declarado 
		
		movi r11, 12 			#Quantidade de números primos
		movi r1 , 1 			#r1 será o número mutável a cada interação para verificar se o mesmo é primo
		movi r12, 1			#r12 indicará se já foi encontrado a quantidade de primos indicada 
		
		
while1:		bgt r12, r11, end		#se r12 > r11 acaba o código, pois já achou a sequância desejada
		addi r1, r1, 1			#incrementa r1 para verificar se o próximo número da sequência natural é primo
		movi r2 , 2 			#valor para fazer a divisão de 2 até N-1
		
		
while2:		bge r2, r1, if 			# if i<N ele desce para fazer as verificações de primo, caso chegue a i>=N ele dirá que é primo
		div r3, r1, r2			# realiza uma divisão
		mul r3, r3, r2			# depois faz uma multiplicação 
		beq r3, r1, while1 	        # a divisão e multiplicão é para checar se i % j == 0 do código.C na descrição, caso seja ele não é primo e testa o próximo valor
		addi r2, r2, 1			# incrementa o valor até n-1 para testar todos os restos possíveis, exemplo se o número for 8, ele vai tentar de 2 até 7			
		br while2			# chamando o mesmo rótulo até decidir ser primo ou não
		
if:		addi r12, r12, 1 		# incrementa a quantidade de primos, se tiver em 3 e incrementar pra 4 significa que ele já achou 3 números e irá buscar o quarto.
		stw r1, 0(r10)			# armazena o mesmo em uma posição do vetor
		addi r10, r10, 4		# seta a próximaa posição do vetor para ser a atual
		br while1			# recomeça o próxima interação do primeiro laço
		
end:						# o programa finalizou encontrando a sequencia de primos necessária e finaliza. 
		
		
	
	
		
	

	

	
	
	

	

