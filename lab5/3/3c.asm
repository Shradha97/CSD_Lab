//pointer for array in R0
//size of array in variable n

@zeroct
M=0

@onect
M=0

@R0
D=M
@pos
M=D

@i
M=0

(LOOP1)
	@i
	D=M
	@n
	D=D-M
	@ENDLOOP1
	0;JGE

	@pos
	A=M
	D=M
	@ZERO
	D;JEQ

	(ONE)
	@onect
	M=M+1
	@UPDATE
	0;JMP

	(ZERO)
	@zeroct
	M=M+1

	(UPDATE)
	@pos
	M=M+1
	@i
	M=M+1

	@LOOP
	0;JMP

(ENDLOOP2)


@R0
D=M
@pos
M=D

@i
M=0

(FILLZEROES)
	@i
	D=M
	@evenct
	D=D-M
	@ENDZEROLOOP
	D;JGE

	@pos
	A=M
	M=0

	@pos
	M=M+1
	@i
	M=M+1

	@FILLZEROES
	0;JMP

(ENDZEROLOOP)

@i
M=0

(FILLONES)
	@i
	D=M
	@oddct
	D=D-M
	@ENDONESLOOP
	D;JGE

	@pos
	A=M
	M=0

	@pos
	M=M+1
	@i
	M=M+1

	@FILLONES
	0;JMP

(ENDONESLOOP)
@ENDONESLOOP
0;JMP

