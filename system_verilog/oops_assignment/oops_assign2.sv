/************************************************************************
Author: Mirafra Technologies Pvt Limited
        By Priya Ananthakrishnan
Filename:	oops_assign2.sv  
Date:   	30th  May 2024
Version:	1.0
Description: Concept of few copy methods in System verilog 
***************************************************************************/
class copy;
  int var;
endclass

module copy_s;
initial 
  begin
    a a1;
    a a2;
    a1 = new();
    a1.i = 5;
    a2 = a1; 
    /ADD_CODE: Display the value of var in the object a1 and object a2
    //Mention the concept used in the code 
    a2 = new a1; 
    a1.i = 10;
    a2.i = 20;
   //ADD_CODE: Display the value of var in the object a1 and object a2
   //Mention the concept used in the code 
  end 
endmodule
