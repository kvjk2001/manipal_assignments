/************************************************************************
Author: Mirafra Technologies Pvt Limited
        By Meenal Sitaram pannase
Filename:	constraint_assign5.sv  
Date:   	7th June 2024
Version:	1.0
Description: Concept of Constraint Randomization in System Verilog 
***************************************************************************/
class constraint_assign5;
  
//ADD_CODE: Declare the 8bit variable as data. 
//ADD_CODE: Write constraint  for 8 bit variable b which will generate a values between range of 100to 200.
//ADD_CODE: Declare the 8bit variable as data1. 
//ADD_CODE: Write constraint  for 8 bit variable b_unique which will generate a values between range of
//100 to 200 without using unique keyword . 

endclass:constraint_assign5
module con_assign5; 
  //ADD_CODE: Declare the handle for "class constraint_assign5" as c0.
initial
  begin
    //ADD_CODE: Create the Object for  handle
    //ADD_CODE: Randomize the object for generating randomize values for variable b and b_unique between range of 100to 200..
    //ADD_CODE: Display the values of variable b using object handel.
        
  end 
endmodule:con_assign5
