// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Mult.asm

// Multiplies R0 and R1 and stores the result in R2.
// (R0, R1, R2 refer to RAM[0], RAM[1], and RAM[2], respectively.)

// Put your code here.

// int a = R0;
// int b = R1;
// int i = 1;
// int product = 0;
// while (i <= b) {
//     product += a;
//     i++;
// }

@i
M = 1 // i = 1
@R2
M = 0 // product = 0
@R0
D = M
@a
M = D // a = RAM[0]
@R1
D = M
@b
M = D // b = RAM[1]

(LOOP)
@i
D = M
@b
D = D - M
@END
D; JGT

@a
D = M
@R2
M = M + D
@i
M = M + 1
@LOOP
0; JMP

(END)
@END
0; JMP