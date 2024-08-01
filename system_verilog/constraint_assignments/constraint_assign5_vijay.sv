/************************************************************************
Author: Mirafra Technologies Pvt Limited
        By Meenal Sitaram pannase
Filename:	constraint_assign5.sv  
Date:   	7th June 2024
Version:	1.0
Description: Concept of Constraint Randomization in System Verilog 
***************************************************************************/
class constraint_assign5;
  
//ADD_CODE: Declare the 8bit variable 
  rand bit [7:0] b;
  rand bit [7:0] b_unique;
  int arr[$];
  int i = 0;
//ADD_CODE: Write constraint  for 8 bit variable b which will generate a values between range of 100to 200.
  constraint c1{b inside {[100:200]};unique{b};}
//ADD_CODE: Declare the 8bit variable as data1.
//ADD_CODE: Write constraint  for 8 bit variable b_unique which will generate a values between range of
  constraint c2{b_unique inside {[100:200]}; foreach(arr[i]) arr[i]!=b_unique;}
//100 to 200 without using unique keyword . 
  function void post_randomize();
    arr[i] = b_unique;
    i++;
  endfunction
endclass:constraint_assign5
module con_assign5; 
  //ADD_CODE: Declare the handle for "class constraint_assign5" as c0.
  constraint_assign5 c0;
initial
  begin
    //ADD_CODE: Create the Object for  handle
    c0 = new();
    //ADD_CODE: Randomize the object for generating randomize values for variable b and b_unique between range of 100to 200..
    repeat(20)
    begin
    c0.randomize();
    //ADD_CODE: Display the values of variable b using object handel.
    $display("b = %d, b_unique: %d", c0.b, c0.b_unique);
    end
  end 
endmodule:con_assign5
