/************************************************************************
Author: Mirafra Technologies Pvt Limited
        By Priya Ananthakrishnan
Filename:	oops_assign1.sv  
Date:   	22nd May 2024
Version:	1.0
Description: Concept of class constructor concept and creation of Objects
***************************************************************************/
class construct
  int i
  function new();
    i= i+1;
  endfunction:new
endclass:construct

module class_cons;
  //ADD_CODE: declare the three handles c0,c1,c2 for the calss construct
  initial
    begin
      //ADD_CODE: Create the Object for each handlle
      //ADD_CODE: Display the vlues of i for each object
  end
endmodule:class_cons
