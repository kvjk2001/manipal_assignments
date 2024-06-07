/************************************************************************
Author: Mirafra Technologies Pvt Limited
        By Priya Ananthakrishnan
Filename:	func_assign3.sv  
Date:   	6th June 2024
Version:	1.0
Description: Concept of various function passing by ref 
***************************************************************************/
module func_assign3;

//ADD_CODE: Pass a two dimensional array as reference and include the range of the array
//ADD_CODE: Add the min size and max size also as inputs 
//eg : ref reg[7:0]mem[] input min_size input max_size 
 
bit parity = 0;
for //ADD_CODE: ADD a for loop to calculate the parity as per the size of the array
  begin
    //ADD_CODE: calculate the parity using the xor operation 
  end
endfunction

initial
  begin
    //ADD_CODE: Declare the two dimensional array 
    //ADD_-CODE: Call the function to calculate the parity for complete array 
    //ADD_CODE:  Call the function and pass rangeto calculate the parity 
    // eg: ie  the min and max size of the array 

  end
endmodule
