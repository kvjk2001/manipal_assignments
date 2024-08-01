/************************************************************************
Author: Mirafra Technologies Pvt Limited
        By Meenal Sitaram Pannase
Filename:	constraint_assign6.sv  
Date:   	7th June 2024
Version:	1.0
Description: Concept of Constraint Randomization in System Verilog 
***************************************************************************/
class constraint_assign6;

  rand int mem_address[];  
//ADD_CODE: Write for constraint to generate a dynamic array mem_address of size 128 to 256 
  constraint c1{mem_address.size() inside {[128:256]};}
//ADD_CODE: elements. Each element has a difference of 4 with respect to adjacent element. 
        //Eg: a[[0] = 5 a[1] = 9 a[2] = 13 goes on 
  constraint c2{foreach(mem_address[i]) if(i!= 0) mem_address[i] == mem_address[i-1] + 4;}
  
endclass:constraint_assign6
module con_assign6; 
  //ADD_CODE: Declare the handle for "class constraint_assign6" as c0.
  constraint_assign6 c0;
initial
  begin
    //ADD_CODE: Create the Object for  handle
    c0 = new();
    //ADD_CODE: Randomize the object for genrating randomize values for dymanic array of size between range of 128to 256 with difference of with respect to adjacent element.
    c0.randomize();
    //ADD_CODE: Display the values and size of dynamic array using object handel.
    $display("Size of array: %d", c0.mem_address.size());
    $display("Array elements are: %p", c0.mem_address);    

  end 
endmodule:con_assign6
