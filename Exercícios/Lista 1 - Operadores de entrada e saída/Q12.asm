.text
main:  	addi $2, $0, 5
	syscall
	add $8, $0, $2	

       	addi $2, $0, 5
	syscall
	add $9, $0, $2
       
       	addi $2, $0, 5
	syscall
	
pesos: 	sll $10, $8, 1
	add $10, $8, $10
	
	sll $11, $9, 3
	add $11, $9, $11
	
	sll $12, $2, 4
	sub $12, $12, $2
	
divisor:   addi $8, $0, 3
	addi $8, $8, 9
	addi $8, $8, 15
	
media:     add $10, $10, $11
	add $10, $10, $12
	div $10, $8
	
	mflo $4
	addi $2, $0, 1
 	syscall
	
	
											