.text
main:	addi $2, $0, 5
	syscall
	add $8, $0, $2		# n
	add $9, $0, $0		# a
	add $10, $0, $0		# b
	add $11, $0, $0		# c
	add $12, $0, $0		# i
	add $13, $0, $0		# j
	add $14, $0, $0		# k
	
for1:	beq $12, $8, print	# if(i==n)	
	for2: beq $13, $8, for1
		for3:	beq $14, $8, for1
	
	