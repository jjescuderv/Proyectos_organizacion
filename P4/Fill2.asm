(INICIO)
@SCREEN
D=A
@addr
M=D
@Color
M=0

(TECLA)
@KBD
D=M
@NEGRO  // Si es > 0 algo se presionó
D;JGT
@BLANCO
D;JEQ

@TECLA
0;JMP

    (NEGRO)
    @Color
    M=-1
    @PINTAR
    0;JMP

    (BLANCO)
    @Color
    M=0
    @PINTAR
    0;JMP

(PINTAR)

    @Color
    D=M

    @addr
    A=M
    M=D    

    @addr
    D=M+1
    @KBD
    D=A-D

    @addr 
    M=M+1
    A=M

    @PINTAR
    D;JGT

@INICIO
0;JMP

