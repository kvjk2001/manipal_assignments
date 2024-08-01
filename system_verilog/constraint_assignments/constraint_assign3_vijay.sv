/************************************************************************
Author: Mirafra Technologies Pvt Limited
        By Meenal Sitaram Pannase
Filename:	func_assign3.sv  
Date:   	7th June 2024
Version:	1.0
Description: Concept of Constraint Randomization in System Verilog 
***************************************************************************/
class constraint_assign3;
  
//ADD_CODE: Declare the 32bit variable a. 
  rand bit [31:0] a;
//ADD_CODE: Write constraint the random variable [31:0]a such that the randomized values are always multiples of 10.
  constraint c1{a%10 == 0;}
endclass:constraint_assign3 
module con_assign3; 
  //ADD_CODE: Declare the handle for "class constraint_assign3" as c0.
  constraint_assign3 c0;
initial
  begin
    //ADD_CODE: Create the Object for  handle
    c0 = new();
    //ADD_CODE: Randomize the object for genrating randomize values for variable a with multiples of 10.
    c0.randomize();
    //ADD_CODE: Display the values of a using object handel.
    $display("a= %d", c0.a);
        
  end 
endmodule:con_assign3
