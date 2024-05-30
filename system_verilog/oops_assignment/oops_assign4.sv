/************************************************************************
Author: Mirafra Technologies Pvt Limited
        By Priya Ananthakrishnan
Filename:	oops_assign4.sv  
Date:   	30th May 2024
Version:	1.0
Description: Concept of usage of class variables outside the class and other data types.
***************************************************************************/
class widget;
  int id;
  bit to_remove;
endclass : widget

module top;
widget q[$];
initial
  begin
    widget w;
    int num = $urandom_range(20,40);
    for (int i = 0; i < num; i++) 
      begin
        w = new;
        w.id = i;
        w.to_remove = $urandom_range(0,1);
        q.push_back(w);
        $display("widget id:%d, to_remove:%b", q[$].id, q[$].to_remove);
      end
    //ADD_CODE: Write SV code to remove entries in q[$] that have to_remove bit set to 1.
    //ADD_CODE: check if the entry for which to_remove=1 is set, and the entry is removed
    //ADD_CODE: Display the final queue
  end
endmodule
