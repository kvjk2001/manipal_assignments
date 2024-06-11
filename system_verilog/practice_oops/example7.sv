/************************************************************************
Author: Mirafra Technologies Pvt Limited
        By Priya Ananthakrishnan
Filename:	example7  
Date:   	11 June 2024
Version:	1.0
Description: Concept of task without virtual 
***************************************************************************/
program example7;
 class Base1;
 bit [7:0] d1, d2, csum;

 virtual function void set (bit [7:0] val1='0, bit [7:0] val2=8’hAA);
   d1 = val1;
   d2 = val2;
 endfunction

 virtual function void calc_csum (bit [7:0] id = '0);
   csum = d1 + d2;
 endfunction
  virtual function void show;
   $display("base1 : data = %2h:%2h csum = %2h", d1, d2, csum);
  endfunction
 endclass
  
 class Ext1 extends Base1;
   virtual function void calc_csum (bit [7:0] id = '0);
     d1 = id;
     super.calc_csum();
   endfunction
   virtual function void show;
     $write("ext1 : ");
     super.show();
   endfunction
 endclass
  
 Base1 b1 = new();
 Ext1 e1 = new();

 initial 
   begin
     b1.set(8'h01);
     b1.calc_csum(8'h03);
     b1.show();
     e1.set(8'h01);
     e1.calc_csum(8'h03);
     e1.show();
   end
endprogram
