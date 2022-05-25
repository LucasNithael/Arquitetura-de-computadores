.text
main:  addi $2, $0, 5
	syscall
	
	addi $8, $0, 1000
      	addi $9, $0, 100
 	addi $10, $0, 10		#valores para divisão seguinte
	
	div $2, $8
	mflo $4		
	addi $2, $0, 1
	syscall			#imprime primeiro algarismo com quebra de linha
	addi $4, $0, '\n'
	addi $2, $0, 11
	syscall
	
	mfhi $11			#$11 <- resto
	div $11, $9
	
	mflo $4
	addi $2, $0, 1
	syscall			#imprime segundo algarismo com quebra de linha
	addi $4, $0, '\n'
	addi $2, $0, 11
	syscall
	
	mfhi $12			#$11 <- resto
	div $12, $10
	
	mflo $4
	addi $2, $0, 1
	syscall			#imprime terceiro algarismo com quebra de linha
	addi $4, $0, '\n'
	addi $2, $0, 11
	syscall
	
	mfhi $4
	addi $2, $0, 1
	syscall
	