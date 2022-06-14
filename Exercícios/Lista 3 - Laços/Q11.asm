.text
main:		addi $2, $0, 5
		syscall		
		add $8, $0, $2		#x
		
		addi $9, $0, 11		#a=11
		addi $10, $0, 13		#b=13
		addi $11, $0, 17		#c=17

for:		div $8, $9
		mfhi $15
		beq $15, $0, pare 	#if(x%a==0) break;
		div $8, $10
		mfhi $15
		beq $15, $0, pare 	#if(x%b==0) break;
		div $8, $11
		mfhi $15
		beq $15, $0, pare 	#if(x%c==0) break;

		addi $8, $8, 1
		j for
		
pare:		add $4, $0, $8
		addi $2, $0, 1
		syscall