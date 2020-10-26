@R2
M=0
@R1
D=M
@Contador
M=D+1

(MUL)

    @Contador
    MD=M-1
    @ENDMUL
    D;JEQ
    @R0
    D=M
    @R2
    M=D+M

@MUL
0;JMP
(ENDMUL)

@ENDMUL
0;JMP