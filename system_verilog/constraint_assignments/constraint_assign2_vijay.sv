/************************************************************************
Author: Mirafra Technologies Pvt Limited
        By Meenal Sitaram Pannase
Filename:	constraint_assign2.sv  
Date:   	7th June 2024
Version:	1.0
Description: Concept of Constraint Randomization in System Verilog 
***************************************************************************/
class constraint_assign2;
  
//ADD_CODE: Declare the dynamic array as address of size 10. 
  rand int address[];
//ADD_CODE: Write constraint for a dynamic array address of size 10 to generate even numbers.
  constraint c1{foreach(address[i]) address[i]%2 == 0;}
endclass:constraint_assign2 

module con_assign2; 
  //ADD_CODE: Declare the handle for "class constraint_assign2" as c0.
  constraint_assign2 c0;
initial
  begin
    //ADD_CODE: Create the Object for  handle
    c0 = new();
    c0.address = new[10];
    //ADD_CODE: Randomize the object for genrating randomize values for address with even numbers.
    c0.randomize();
    //ADD_CODE: Display the values of of array address using object handel
    $display("Address elements are: %p", c0.address);
        
  end 
endmodule:con_assign2
