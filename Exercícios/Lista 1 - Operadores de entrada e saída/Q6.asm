.text
main:  addi $2, $0, 5
	syscall
	
      	addi $8, $0, 100
 	addi $9, $0, 10	#valores para divisão seguinte
	
	div $2, $8
	mflo $4		
	
	addi $2, $0, 1
	syscall
	
	mfhi $10		#$10 <- restp
	div $10, $9
	
	mflo $4
	addi $2, $0, 1
	syscall
	
	mfhi $4
	addi $2, $0, 1
	syscall
	