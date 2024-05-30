/************************************************************************
Author: Mirafra Technologies Pvt Limited
        By Priya Ananthakrishnan
Filename:	oops_assign9.sv  
Date:   	30th May 2024
Version:	1.0
Description: Concept for virtual class functionality
***************************************************************************/

virtual class parent;
  int var1=10;
  int var2=20;
  task print_val();
          $display("var1=%d,var2=%d",var1,var2);
  endtask
endclass

class child extends parent;
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
    c=p;
    p=c;
    c.print_val();
end
endprogram
