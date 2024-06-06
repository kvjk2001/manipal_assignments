/************************************************************************
Author: Mirafra Technologies Pvt Limited
        By Priya Ananthakrishnan
Filename:	func_assign2.sv  
Date:   	6th June 2024
Version:	1.0
Description: Concept of various function passing by ref 
***************************************************************************/
module func_assign2;
//ADD_CODE: Declare an automatic function print_parity
//ADD_CODE: Pass a two dimensional array as reference eg : ref reg[7:0]mem[]
// Add a bit named parity 

//ADD_CODE: Return the value of the parity 
bit parity = 0;
for //ADD_CODE: ADD a for loop to calculate the parity as per the size of the array
  begin
    //ADD_CODE: calculate the parity using the xor operation 
  end
endfunction

initial
  begin
    //ADD_CODE: Declare the two dimensional array 
    //ADD_CODE: Pass the array and set the size of the array to 10
    //ADD_CODE: Display size of the array 
    //Intializing the array with values before passing to the function 
    for (int i = 0; i<mem.size(); i ++)
      begin
        mem[i] = i;
      end
    print_parity(mem); // function call
  end
endmodule
