.text
   	
do:	addi $2, $0, 5
	syscall
	srl $9, $2, 31
	bne $9, $0, While
	add $8, $8, $2
While:	bne $2, $0, do 

fim:     add $4, $0, $8
	addi $2, $0, 1
	syscall
      	