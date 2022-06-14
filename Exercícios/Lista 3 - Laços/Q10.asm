.text
main:	addi $2, $0, 5
	syscall
	add $8, $0, $2		#a
	addi $2, $0, 5		
	syscall
	add $9, $0, $2		#b
	
	slt $10, $9, $8		#if (b<a) $10=1; else $10=0;
	beq $10,$0, troca
	j do
	
troca:	add $11, $0, $8		#aux=a;
	add $8, $0, $9		#a=b;
	add $9, $0, $11		#b=aux;
	
do:   	div $8, $9		#r;
	add $8, $0, $9		#a=b;
	mfhi $9			#b=r;
while:   bne $9, $0, do

fim:  	add $4, $0, $8
	addi $2, $0, 1
	syscall 