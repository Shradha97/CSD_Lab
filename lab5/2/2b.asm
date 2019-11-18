@a
D=M
@b
D=D-M
@lesser
D;JLT
@equal
D;JEQ

(greater)
	@c
	M=1
	@END
	0;JMP

(lesser)
	@2
	D=A
	@c
	M=D
	@END
	0;JMP

(equal)
@c
M=0
@END
0;JMP

(END)
	@END
	0;JMP
