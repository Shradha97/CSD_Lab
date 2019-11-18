@17
D=M
@i
M=D

(LOOP)
	@i
	D=M
	@16384
	D=D-A
	@END
	0;JMP

	@13
	D=A
	@i
	A=M
	M=D

	@i
	M=M+1

	@LOOP
	0;JMP
(END)
0;JMP