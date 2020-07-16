## [Project 1: Boolean Logic](https://www.nand2tetris.org/)

###### [Background](https://www.nand2tetris.org/)

A typical computer architecture is based on a set of elementary logic gates like And, Or, Mux, etc., as well as their bit-wise versions And16, Or16, Mux16, etc. (assuming a 16-bit machine). This project engages you in the construction of a typical set of basic logic gates. These gates form the elementary building blocks from which more complex chips will be later constructed.

###### [Objective](https://www.nand2tetris.org/)

Build all the logic gates described in Chapter 1 (see list below), yielding a basic chip-set. The only building blocks that you can use in this project are primitive Nand gates and the composite gates that you will gradually build on top of them.

###### [Chips](https://www.nand2tetris.org/)

![image-20200715175856932](C:\Users\唐亚周\AppData\Roaming\Typora\typora-user-images\image-20200715175856932.png)

###### [Contract](https://www.nand2tetris.org/)

When loaded into the supplied Hardware Simulator, your chip design (modified .hdl program), tested on the supplied .tst script, should produce the outputs listed in the supplied .cmp file. If that is not the case, the simulator will let you know. This contract must be satisfied for each chip listed above, except for the Nand chip, which is considered primitive, and thus there is no need to implement it.

###### [Resources](https://www.nand2tetris.org/)

See [Chapter 1](https://b1391bd6-da3d-477d-8c01-38cdf774495a.filesusr.com/ugd/44046b_f2c9e41f0b204a34ab78be0ae4953128.pdf), the [HDL Guide](https://drive.google.com/file/d/1dPj4XNby9iuAs-47U9k3xtYy9hJ-ET0T/view?usp=sharing) (except for A2.4), and the [Hack Chip Set](https://drive.google.com/file/d/1IsDnH0t7q_Im491LQ7_5_ajV0CokRbwR/view?usp=sharing).

For each chip, we supply a skeletal .hdl file with a place holder for a missing implementation part. In addition, for each chip we supply a .tst script that instructs the hardware simulator how to test it, and a .cmp ("compare file") containing the correct output that this test should generate. Your job is to complete and test the supplied skeletal .hdl files.

If you've downloaded the Nand2Tetris Software Suite (from the Software section of this website), you will find the supplied hardware simulator and all the necessary project files in the nand2tetris/tools folder and in the nand2tetris/projects/01 folder, respectively. To get acquainted with the hardware simulator, see the Hardware Simulator Tutorial ([PPT](https://b1391bd6-da3d-477d-8c01-38cdf774495a.filesusr.com/ugd/44046b_3ddb5173a390416cbb3b30dc4d70cf98.ppt?dn=Hardware Simulator Tutorial.ppt), [PDF](https://b1391bd6-da3d-477d-8c01-38cdf774495a.filesusr.com/ugd/44046b_02055f8bb5ac47648c0ab642f01c1919.pdf))

###### [Tips](https://www.nand2tetris.org/)

Prerequisite: If you haven't done it yet, download the Nand2Tetris Software Suite from the Software section of this website to your computer. Read Chapter 1 and Appendix 2 (not including A2.4), and go through parts I-II-III of the Hardware Simulator, before starting to work on this project.

Built-in chips: The Nand gate is considered primitive and thus there is no need to implement it: whenever a Nand chip-part is encountered in your HDL code, the simulator automatically invokes the built-in tools/builtInChips/Nand.hdl implementation. We recommend implementing all the other gates in this project in the order in which they appear in Chapter 1. However, note that the supplied hardware simulator features built-in implementations of all these chips. Therefore, you can use any one of these chips before implementing it: the simulator will automatically invoke their built-in versions.

For example, consider the supplied skeletal Mux.hdl program. Suppose that for one reason or another you did not complete the implementation of Mux, but you still want to use Mux chips as internal parts in other chip designs. You can easily do so, thanks to the following convention. If the simulator fails to find a Mux.hdl file in the current directory, it automatically invokes the built-in Mux implementation, which is part of the supplied simulator's environment. This built-in Mux implementation has the same interface and functionality as those of the Mux chip described in the book. Thus, if you want the simulator to ignore one or more of your chip implementations, rename the corresponding chiPname.hdl file, or remove it from the directory. When you are ready to develop this chip in HDL, put the file chipName.hdl back in the directory, and proceed to edit it with your HDL code.

###### [Tools](https://www.nand2tetris.org/)

All the chips mentioned projects 1-5 can be implemented and tested using the supplied hardware simulator. Here is a screen shot of testing a Xor.hdl chip implementation on the Hardware Simulator:

![img](https://static.wixstatic.com/media/44046b_d2d64ef4f50948e7ae0f5d9cd1b5e4c9~mv2.gif)