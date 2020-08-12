// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Fill.asm

// Runs an infinite loop that listens to the keyboard input.
// When a key is pressed (any key), the program blackens the screen,
// i.e. writes "black" in every pixel;
// the screen should remain fully black as long as the key is pressed. 
// When no key is pressed, the program clears the screen, i.e. writes
// "white" in every pixel;
// the screen should remain fully clear as long as no key is pressed.

// Put your code here.

// 


(LOOP1)
@KBD
D = M
@BLACKEN_THE_SCREEN
D; JNE
@CLEAR_THE_SCREEN
D; JEQ
@LOOP1
0; JMP

(BLACKEN_THE_SCREEN)
@SCREEN
D = A
@address
M = D // address = 16384
@i
M = 0

(LOOP2)
@i
D = M
@8191 // the whole address is 8192
D = D - A
@LOOP1
D; JGT

@address
A = M
M = -1

@i
M = M + 1
@address
M = M + 1 // address++
@LOOP2
0; JMP

(CLEAR_THE_SCREEN)
@SCREEN
D = A
@address
M = D // address = 16384
@i
M = 0

(LOOP3)
@i
D = M
@8191
D = D - A
@LOOP1
D; JGT

@address
A = M
M = 0

@i
M = M + 1
@address
M = M + 1
@LOOP3
0; JMP