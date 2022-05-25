.text
main: 	addi $2, $0, 5
	syscall
	add $8, $0, $2
	
	addi $2, $0, 5
	syscall
	
	sub $9, $8, $2
	
	srl $10, $9, 31
	
	bne $10, $0, menor  	#if $10 != 0
	add $4, $0, $2
	j mostrar		#Saltar para mostrar
	
menor:  	add $4, $0, $8	#else 

mostrar:	addi $2, $0, 1
	syscall
	

############################################################	
	bne $10, $0, diferenca
	add $12, $0, $9 
	j mostrar2

diferenca:	addi $11, $0, -1
	mul $12, $9, $11

mostrar2:	addi $4, $0, '\n'
	addi $2, $0, 11
	syscall
	add $4, $0, $12
	addi $2, $0, 1
	syscall


fim:	addi $2, $0, 10
	syscall
