/************************************************************************
Author: Mirafra Technologies Pvt Limited
        By Priya Ananthakrishnan
Filename:	oops_assign10.sv  
Date:   	30th May 2024
Version:	1.0
Description: Concept for virtual class functionality
***************************************************************************/

virtual class parent;
  int var1=10;  //HINT: we can only declare variables in Abstract class we cannot assign values 
  int var2=20;
  task print_val();
    $display("var1=%d,var2=%d",var1,var2); //HINT: in Abstract class we can only declare function cannot have the body of the function
  endtask
endclass

class child extends parent; 
  //ADD_CODE: Add initialisation of Abstract class variables in the derived class
  int var2 = 30;
  task print_val();
    $display("var1=%d,var2=%d",var1,var2);
  endtask
endclass

program test;
initial 
  begin
    parent p;
    child c;
    p = new();
    c = new();
    p=c; //Remove the illegal assignment and call the function print_val
    c=p;
    c.print_val();
end
endprogram
