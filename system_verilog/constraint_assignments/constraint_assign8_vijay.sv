/************************************************************************
Author: Mirafra Technologies Pvt Limited
        By Meenal Sitram Pannase
Filename:	constraint_assign8.sv  
Date:   	7th June 2024
Version:	1.0
Description: Concept of Constraint Randomization in System Verilog 
***************************************************************************/
class constraint_assign8;
  
//ADD_CODE: Declare the two 32 bit variable a and b.
  rand bit [31:0] a;
  rand bit [31:0] b;
//ADD_CODE: Write for constraint for two variable of 32bit a and b which will generate the random values for a greater that 150 and for b greater than 150 less than 1000.
  constraint c1{a > 150; b inside {[150:1000]};}
endclass:constraint_assign8
module con_assign8; 
  //ADD_CODE: Declare the handle for "class constraint_assign8" as c0.
  constraint_assign8 c0;
initial
  begin
    //ADD_CODE: Create the Object for  handle
    c0 = new();
    //ADD_CODE: Randomize the object for genrating randomize values of variable a and b.
    c0.randomize();
    //ADD_CODE: Display the values of variable a and b using object handel.
    $display("a=%d, b=%d", c0.a, c0.b);
  end 
endmodule:con_assign8
