.text
main: addi $2, $0, 5
     	syscall 	#lê os 9 digitos do cpd
     	
     addi $8, $0, 100000000
     div $2, $8
     mflo $9	#separa o primeiro digito
     
     addi $8, $0, 10
     mul $24, $9, $8	#multiplica por 10 o primeiro digito
     
     mfhi $10	#resto para $10
     
     addi $8, $0, 10000000
     div $10, $8
     mflo $10	#segundo digito
     
     addi $8, $0, 9
     mul $10, $10, $8	#multiplica por 9 o segundo digito
     
     add $24, $9, $10 	#soma do produto dos dois primeiros digitos
     
     mfhi $10
     
     addi $8, $0, 1000000
     div $10, $8
     mflo $10	#terceiro digito
     
     addi $8, $0, 8
     mul $10, $10, $8
     
     add $24, $24, $10
    
     add $4, $0, $9
     addi $2, $0, 1
     	syscall
     addi $2, $0, 10
     	syscall 
