# carry_save_multiplier
Carry save multiplier coded in system verilog

This code is modified form of https://github.com/suoglu/Carry-Save-Multiplier/
The original code is just a array multiplier that has been modified to convert it into a carry save multiplier

Working of design:

![alt text](https://github.com/KevinPrakash/carry_save_multiplier/blob/main/single_bit_multiplier.JPG)

1) Multiplication:
  The multiplication is done by and anding the bits of factor0 and factor1. basecell_fa input f1_i and f2_i are ADDED to perform multiplication.
 
2) Addition:
  Once the multiplication is performed the individual rows of values needs to be added. Each subsequent stage if left shifted by 1 to signify the weight in multiplication. basecell_fa consistes of a AND gate and a Full Adder. The inputs to the full adder are the multiplied bits, c_i(carry in from above row), b_i(sum in from previous row). The carry save here implies that the intermediate values are not complete sums. Each carry is propogated downwards instead of right to left to speed up the addition process. Due to carry save an extra row of full adders is required at the bottom most row to obtain the full sum. The Full Adder output s_o and c_o are fed to the subsequent rows.
  
 ![alt text](https://github.com/KevinPrakash/carry_save_multiplier/blob/main/Final_Circuit.JPG)
