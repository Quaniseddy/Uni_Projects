@R1
A=M
D=M
@R0
M=D
(LOOP)
    @R2
    MD=M-1
    @END
    D;JEQ
    @R1
    AM=M+1
    D=M 
    @current 
    M=D
    @R0
    D=M
    @current
    D=D-M
    @OVERWRITE 
    D;JGT
    @LOOP
    0;JMP
(END)
    @END
    0;JMP
(OVERWRITE)
    @current
    D=M
    @R0
    M=D
    @LOOP
    0;JMP