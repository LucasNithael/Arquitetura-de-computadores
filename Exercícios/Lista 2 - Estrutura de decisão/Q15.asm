.text
main:		addi $2, $0, 5
		syscall	
		add $8, $0, $2
		addi $2, $0, 5
		syscall	
		add $9, $0, $2
		addi $2, $0, 5
		syscall	
		add $10, $0, $2
	
ParaMeses1e2: 	addi $11, $0, 1
		addi $12, $0, 2
		beq  $9, $11, soma12
		beq  $9, $12, soma12
		
MesesDe3a12:	sll $11, $9, 1		#mes * 2
		
		addi $12, $0, 3
		mul $9, $9, $12		#-> 3m
		add $9, $9, $12		#-> 3m + 3
		addi $12, $0, 5		#->
		div $9, $12		#-> (3m + 3)/5
		mflo $9
		
		addi $13, $0, 4		
		div $10, $13		#ano/4
		mflo $13
		addi $14, $0, 100
		div $10, $14		#ano/100
		mflo $14
		sub $14, $13, $14		#(ano/4) - (ano/100)
		addi $15, $0, 400
		div $10, $15		#ano/400
		mflo $15
		add $14, $14, $15		#(ano/4) - (ano/100) + (ano/400)
		
		add $11, $11, $9		#2m + (3m + 3)/5
		add $11, $11, $14		#2m + (3m + 3)/5 + (ano/4) - (ano/100) + (ano/400)
		
		addi $16, $0, 2
		add $11, $11, $16    	#2m + (3m + 3)/5 + (ano/4) - (ano/100) + (ano/400) + 2
		add $11, $11, $8		#2m + (3m + 3)/5 + (ano/4) - (ano/100) + (ano/400) + 2 + d
		add $11, $11, $10		#2m + (3m + 3)/5 + (ano/4) - (ano/100) + (ano/400) + 2 + dia + ano
		j modDoDia

		
						
soma12:		addi $9, $9, 12		#mes 1 ou 2 + 12
		subi $10, $10, 1		#ano-1
		sll $11, $9, 1		#mes * 2
		
		addi $12, $0, 3
		mul $9, $9, $12		#-> 3m
		add $9, $9, $12		#-> 3m + 3
		addi $12, $0, 5		#->
		div $9, $12		#-> (3m + 3)/5
		mflo $9
		
		addi $13, $0, 4		
		div $10, $13		#ano/4
		mflo $13
		addi $14, $0, 100
		div $10, $14		#ano/100
		mflo $14
		sub $14, $13, $14		#(ano/4) - (ano/100)
		addi $15, $0, 400
		div $10, $15		#ano/400
		mflo $15
		add $14, $14, $15		#(ano/4) - (ano/100) + (ano/400)
		
		add $11, $11, $9		#2m + (3m + 3)/5
		add $11, $11, $14		#2m + (3m + 3)/5 + (ano/4) - (ano/100) + (ano/400)
		
		addi $16, $0, 2
		add $11, $11, $16    	#2m + (3m + 3)/5 + (ano/4) - (ano/100) + (ano/400) + 2
		add $11, $11, $8		#2m + (3m + 3)/5 + (ano/4) - (ano/100) + (ano/400) + 2 + d
		add $11, $11, $10		#2m + (3m + 3)/5 + (ano/4) - (ano/100) + (ano/400) + 2 + dia + ano

		
						
modDoDia:	addi $12, $0, 7
		div  $11, $12
		mfhi $11
		addi $13, $0, 1
		addi $14, $0, 2
		addi $15, $0, 3
		addi $16, $0, 4
		addi $17, $0, 5
		addi $18, $0, 6
		beq $11, $0, sab
		beq $11, $13, dom
		beq $11, $14, seg
		beq $11, $15, ter
		beq $11, $16, qua
		beq $11, $17, qui
		beq $11, $18, sex
	
		
seg: 		addi $4, $0, 's'
		addi $2, $0, 11
		syscall
		addi $4, $0, 'e'
		addi $2, $0, 11
		syscall
		addi $4, $0, 'g'
		addi $2, $0, 11
		syscall
		addi $2, $0, 10
		syscall
		
ter:		addi $4, $0, 't'
		addi $2, $0, 11
		syscall
		addi $4, $0, 'e'
		addi $2, $0, 11
		syscall
		addi $4, $0, 'r'
		addi $2, $0, 11
		syscall
		addi $2, $0, 10
		syscall
		
qua: 		addi $4, $0, 'q'
		addi $2, $0, 11
		syscall
		addi $4, $0, 'u'
		addi $2, $0, 11
		syscall
		addi $4, $0, 'a'
		addi $2, $0, 11
		syscall
		addi $2, $0, 10
		syscall
		
qui:		addi $4, $0, 'q'
		addi $2, $0, 11
		syscall
		addi $4, $0, 'u'
		addi $2, $0, 11
		syscall
		addi $4, $0, 'i'
		addi $2, $0, 11
		syscall
		addi $2, $0, 10
		syscall
		
sex:		addi $4, $0, 's'
		addi $2, $0, 11
		syscall
		addi $4, $0, 'e'
		addi $2, $0, 11
		syscall
		addi $4, $0, 'x'
		addi $2, $0, 11
		syscall
		addi $2, $0, 10
		syscall

dom:		addi $4, $0, 'd'
		addi $2, $0, 11
		syscall
		addi $4, $0, 'o'
		addi $2, $0, 11
		syscall
		addi $4, $0, 'm'
		addi $2, $0, 11
		syscall
		addi $2, $0, 10
		syscall
		
sab: 		addi $4, $0, 's'
		addi $2, $0, 11
		syscall
		addi $4, $0, 'a'
		addi $2, $0, 11
		syscall
		addi $4, $0, 'b'
		addi $2, $0, 11
		syscall
		addi $2, $0, 10
		syscall
		
fim: 		addi $2, $0, 1000
		syscall
