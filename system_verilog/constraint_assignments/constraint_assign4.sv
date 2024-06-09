/************************************************************************
Author: Mirafra Technologies Pvt Limited
        By Meenal Sitaram Pannase
filename:	constraint_assign4.sv  
Date:   	7th June 2024
Version:	1.0
Description: Concept of Constraint Randomization in System Verilog 
***************************************************************************/
class constraint_assign4;
  
//ADD_CODE: Declare the 8bit variable as data. 
//ADD_CODE: Write constraint for dynamic array of randomize size between 10 to 20 
//ADD_CODE: Write a constraint for odd numbers in even location and even numbers in odd locations
//Example a[0] = 1, a[2] = 19, a[3] = 18 ....         
  
endclass:constraint_assign4
module con_assign4; 
  //ADD_CODE: Declare the handle for "class constraint_assign4" as c0.
initial
  begin
    //ADD_CODE: Create the Object for  handle
    //ADD_CODE: Randomize the object for genrating randomize values for array of size between 10 to 20 with odd numbers.
    //ADD_CODE: Display the values and size of array using object handel.
        
  end 
endmodule:con_assign4
