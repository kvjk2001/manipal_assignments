/************************************************************************
Author: Mirafra Technologies Pvt Limited
        By Priya Ananthakrishnan
Filename:	oops_assign8.sv  
Date:   	30th May 2024
Version:	1.0
Description: Concept for OOPS and Dynamic Casting
***************************************************************************/
class A;
  virtual function void display();
    $display("base class");
 endfunction
endclass

class B extends A;
  virtual function void display();
    $display( "B");
  endfunction 
endclass

class C extends B;

 endclass

class D extends C;
  virtual function void display();
    $display( "D");
  endfunction 
endclass

module poly_cast;
initial  
  begin
    A a=new(); 
    B b= new(); 
    C c= new(); 
    D d=new();

    $cast (a,b); 
    $cast (b,c); 
    $cast (c,d); 
    $cast (a,b);

    a.display(); 
    b.display(); 
    c.display(); 
    d.display();
  end
endmodule


