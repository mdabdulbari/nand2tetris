// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Mult.asm

// Multiplies R0 and R1 and stores the result in R2.
// (R0, R1, R2 refer to RAM[0], RAM[1], and RAM[2], respectively.)

// Put your code here.

@R1
D=M
@integer1
M=D     // integer1 = R1


@R2
D=M
@integer2
M=D     // integer2 = R2


@sum
M=0   // sum = 0

@i
M=1   // i = 1
(LOOP)  
    @i
    D=M
    @integer2
    D=D-M
    @STOP
    D;JGT   // if i > integer2 goto STOP

    @sum
    D=M
    @integer1
    D=D+M  
    @sum
    M=D // Add integer1 to sum

    @i
    M=M+1
    @LOOP
    0;JMP

(STOP)
    @sum
    D=M
    @R0
    M=D    

(END)
    @END
    0;JMP