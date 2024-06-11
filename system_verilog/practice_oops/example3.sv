/************************************************************************
Author: Mirafra Technologies Pvt Limited
        By Priya Ananthakrishnan
Filename:	example3  
Date:   	11 June 2024
Version:	1.0
Description: Concept of task without virtual 
***************************************************************************/

class Base; 
  virtual task print (); 
    $display("This is Base Class"); 
  endtask 
endclass 
 
class Extended extends Base; 
  virtual task print (); 
    $display("This is Extended Class"); 
  endtask 
endclass 
 
program main; 
  Extended ext; 
  Base     ba; 
  
  initial 
    begin 
      ba = new(); 
      ba.print(); 
      
      ext = new(); 
      ba  = ext; 
      ba.print(); 
    end 
endprogram : main 
