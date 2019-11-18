//A pointer is in R0
//B pointer is in R1
//C pointer is in R2
//n and m are stored in R3 and R4 

@i
M=0

@j
M=0

@R0		//Location of A
D=M
@a
M=D

@R1		//Location of B
D=M
@b
M=D

@R2		//Location of C
D=M
@c
M=D


(OUTLOOP)
	@i
	D=M
	@R3		//Value of n
	D=D-M
	@ENDOUT
	D;JGE
	
	@j
	M=0
	
	(INLOOP)
		@j
		D=M
		@R4		//Value of m
		D=D-M
		@ENDIN
		D;JGE
		
		@a
		A=M
		D=M
		
		@b
		A=M
		D=D+M
		
		@c
		A=M
		M=D
		
		@a
		M=M+1
		@b
		M=M+1
		@c
		M=M+1
		
		@j
		M=M+1
		
		@INLOOP
		0;JMP
	
	(ENDIN)
	@i
	M=M+1
	
	@OUTLOOP
	0;JMP

(ENDOUT)
@ENDOUT
0;JMP