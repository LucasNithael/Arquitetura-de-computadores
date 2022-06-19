.text
main:	addi $2, $0, 5
	syscall			# n
	addi $4, $0, 1
	
	addi $8, $0, 1	
	addi $9, $0, 2
	beq $2, $8 print		# if(n==1) 
	beq $2, $9 print		# if(n==2)
	
	addi $10, $0, 1		# ultimo = 1
	addi $11, $0, 1		# penultimo = 1
	addi $12, $0, 2		# count = 2

while:   beq $2, $12, print	# While(n!=count)
	add $13, $10, $11		# termo = ultimo + penultimo
	add $11, $0, $10		# penultimo = ultimo
	add $10, $0, $13		# ultimo = termo
	addi $12, $12, 1		# count++
	add $4, $0, $13		# $4 = termo
	j while
	
print:  	addi $2, $0, 1
	syscall