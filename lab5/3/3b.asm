//pointer for array in R0
//size of array in variable n

@evenct
M=0

@oddct
M=0

@R0
D=M
@pos
M=D

@i
M=0

(LOOP)
	@i
	D=M
	@n
	D=D-M
	@END
	D;JGE

	@1
	D=1
	@pos
	A=M
	D=D&M
	@ODD
	D;JEQ

	(EVEN)
	@evenct
	M=M+1
	@UPDATE
	0;JMP

	(ODD)
	@oddct
	M=M+1

	(UPDATE)
	@pos
	M=M+1
	@i
	M=M+1

	@LOOP
	0;JMP

(END)
@END
0;JMP
