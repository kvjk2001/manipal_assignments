/************************************************************************
Author: Mirafra Technologies Pvt Limited
        By Priya Ananthakrishnan
Filename:	example12  
Date:   	11 June 2024
Version:	1.0
Description: Concept of virtual class and virtual function understanding
***************************************************************************/

program example12();
 // Virtual base class declaration.
  virtual class base1;
    bit [7:0] id;
    function new(int sid);
      id = sid;
    endfunction
    pure virtual function void print_id();
  endclass
 // First extension; add field and pure virtual override.
 class ext1 extends base1;
 bit [3:0] e1_type;
   function new(int sid, int se1);
     super.new(sid);
     e1_type = se1;
   endfunction
   virtual function void print_id();
     $display("ID %0d: E1 %0d\n", id, e1_type);
   endfunction
 endclass
 // Second extension; pure virtual override.
 class ext2 extends base1;
   function new(int sid);
     super.new(sid);
   endfunction 
   virtual function void print_id();
     $display("ID %0d: E2\n", id);
   endfunction
 endclass
 base1 base;
 ext1 e1 = new(0, 3);
 ext2 e2 = new(1);
 initial 
   begin
     base = e1;
     base.print_id();
     base = e2;
     base.print_id();
   end
endprogram
