/************************************************************************
Author: Mirafra Technologies Pvt Limited
        By Priya Ananthakrishnan
Filename:	example9  
Date:   	11 June 2024
Version:	1.0
Description: Concept of virtual 
***************************************************************************/
//Analyse the code and understand any error in the code and why 

program example9;
 class base1;
 virtual function bit showit (arg1_t i1);
 $display ("\n\n %m: i1=%0d \n\n", i1);
 endfunction
 endclass

 class ext1 extends base1;
 virtual function bit showit (arg2_t in1);
 $display ("\n\n EXT: %m: i1=%0d \n\n", i1);
 return(0);
 endfunction
 endclass

 base1 b1 = new();
 ext1 e1 = new();

 bit status;

 initial begin
 status=b1.showit(25);
 status=e1.showit(33);
 end
endprogram 
