/************************************************************************
Author: Mirafra Technologies Pvt Limited
        By Meenal Sitaram Pannase
Filename:	constraint_assign6.sv  
Date:   	7th June 2024
Version:	1.0
Description: Concept of Constraint Randomization in System Verilog 
***************************************************************************/
class constraint_assign6;
  
//ADD_CODE: Declare the dynamic array of mem_address. 
//ADD_CODE: Write for constraint to generate a dynamic array mem_address of size 128 to 256 
//ADD_CODE: elements. Each element has a difference of 4 with respect to adjacent element. 
        //Eg: a[[0] = 5 a[1] = 9 a[2] = 13 goes on 
  
endclass:constraint_assign6
module con_assign6; 
  //ADD_CODE: Declare the handle for "class constraint_assign6" as c0.
initial
  begin
    //ADD_CODE: Create the Object for  handle
    //ADD_CODE: Randomize the object for genrating randomize values for dymanic array of size between range of 128to 256 with difference of with respect to adjacent element.
    //ADD_CODE: Display the values and size of dynamic array using object handel.
        
  end 
endmodule:con_assign6
