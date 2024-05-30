/************************************************************************
Author: Mirafra Technologies Pvt Limited
        By Priya Ananthakrishnan
Filename:	oops_assign7.sv  
Date:   	30th May 2024
Version:	1.0
Description: Concept for virtual class functionality
***************************************************************************/

virtual class A;
  int a=10;  //HINT: we can only declare variables in Abstract class we cannot assign values 
  int b=20;
  task print_val();
    $display("a=%d,b=%d",a,b); //HINT: in Abstract class we can only declare function cannot have the body of the function
  endtask
endclass

class B extends A; 
  //ADD_CODE: Add initialisation of Abstract class variables in the derived class
  int b = 30;
  task print_val();
    $display("a=%d,b=%d",a,b);
  endtask
endclass

program test;
initial 
  begin
    A a;
    B b;
    a = new();
    b = new();
    b=a;
    a=b;
    b.print_val();
end
endprogram
