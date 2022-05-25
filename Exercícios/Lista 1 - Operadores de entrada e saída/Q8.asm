.text
main:	addi $2 $0, 5
	syscall
hora:	add $8, $0, $2
	addi $11, $0, 3600
	mul $11, $11, $8
	
	
	addi $2 $0, 5
	syscall
minuto:	add $9, $0, $2
	addi $12, $0, 60
	mul $12, $12, $9
	
	
	addi $2 $0, 5
	syscall
segundo:	add $10, $0, $2


tempototal: add $4, $10, $11
	 add $4, $4, $12
	 
	 addi $2, $0, 1
	 syscall