.text
main: 	addi $2, $0, 5
	syscall
     	srl $8, $2, 31
     	addi $9, $0, 0
  

la�o: 	bne $8, $0, fim
	add $9, $2, $9
	addi $2, $0, 5
	syscall
     	srl $8, $2, 31
	j la�o
	
fim:     add $4, $0, $9
	addi $2, $0, 1
	syscall
      	