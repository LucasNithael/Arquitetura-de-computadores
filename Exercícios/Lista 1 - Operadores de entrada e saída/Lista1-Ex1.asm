.text
main: 	addi $2, $0, 5
	syscall
	
	sll $4, $2, 1			#$4 < - $2 << 1
	addi $2, $0, 1
	syscall
 