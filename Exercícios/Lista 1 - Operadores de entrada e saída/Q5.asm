.text 
main: 	addi $2, $0, 5		#lê um inteiro
 	syscall
 	
 	addi $8, $0, 100
 	addi $9, $0, 10	#valores para divisão seguinte
 	
 	div $2, $8		#Primeiro algarismo separado
 	mflo $8		#$8 <- quociente
 	
 	mfhi $10		#$9 <- resto
 	
 	div $10, $9	#segundo algarismo separado
 	
 	mflo $9		#$9 <- quociente
 	
 	mfhi $11
 	
 	add $4, $8, $9
 	add $4, $4, $11	#soma dos algarismos
 	
 	addi $2, $0, 1
 	syscall		#imprimir 	    
 	