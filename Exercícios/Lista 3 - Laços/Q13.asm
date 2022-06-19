.text
main:	addi $2, $0, 5
	syscall			
	add $4, $0, $2		# n1
	subi $8, $2, 1		# n2
	addi $9, $0, 1
	beq $4, 1, print
	beq $4, $0, caso0
	
while:   beq $8, $9, print
	mul $4, $4, $8
	subi $8, $8, 1
	j while
	
print:   addi $2, $0, 1
	syscall
	addi $2, $0, 10
	syscall
	
caso0:   addi $4, $0, 1
	j print
