.text
main: addi $2, $0, 5
      	syscall
      add $8, $0, $2		#$8<-$2
      
      addi $9, $0, 1000	#$9<-1000 fator de divis�o 
      div $8, $9		#$8 / 1000
      
      mflo $10		#Quociente
      mfhi $11		#Resto
      
     
      add $12, $0, $10	#$12<-Quociente
      add $13, $0, $10	#Salvar o valor do quiciente para somar ao valor 16
      
      srl $10, $10, 1		#
      or $12, $12, $10	#
      srl $10, $10, 1		#
      or $12, $12, $10	#
      srl $10, $10, 1		# Veriricar se h� 1 em algum dos quatros bits, caso tenha 1 ser� sempre jogado para o primeiro bit
      or $12, $12, $10	#
      srl $10, $10, 1		#
      or $12, $12, $10	#
      
      andi $12, $12, 1	#Para verificar se o primeiro bit � 1 ou 0, ent�o de acordo do valor que for ser� usado para multipli��o
      
      addi $14, $0, 32	#32 asci � espa�o
      addi $15, $13, 16	#soma do quociente com o valor 16
      mul $12, $12, $15	#multiplica��o do valor do quociente mais 16 com o valor do bit da verifica��o
      add $4, $14, $12	#soma do 32 com o produto
      
      addi $2, $0, 11
      syscall		#imprimir
      
      #A partir daqui para os demais valores do resto � a mesma l�gica
