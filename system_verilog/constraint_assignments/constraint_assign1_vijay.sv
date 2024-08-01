/************************************************************************
Author: Mirafra Technologies Pvt Limited
        By Meenal Sitaram Pannase
Filename:	constraint_assign1.sv  
Date:   	7th June 2024
Version:	1.0
Description: Concept of Constraint Randomization in System Verilog 
***************************************************************************/
class con_assign1;
  
//ADD_CODE: Declare the 8bit variable as data. 
  rand bit [7:0] data;
//ADD_CODE: Write constraint for an 8bit variable data to generate values divisible by 5.
  constraint c1{data % 5 == 0;}
endclass:con_assign1 

module constraint_assign1; 
  //ADD_CODE: Declare the handle for "class constraint_assign1" as c0.
  con_assign1 c0;
initial
  begin
    //ADD_CODE: Create the Object for  handle
    c0 = new();
    //ADD_CODE: Randomize the object for genrating randomize values for data which is divisible by 5
    c0.randomize();
    //ADD_CODE: Display the values of data using object handel.
    $display("Data: %d", c0.data);    
  end 
endmodule:constraint_assign1
