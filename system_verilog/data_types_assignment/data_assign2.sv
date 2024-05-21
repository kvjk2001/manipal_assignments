// Write a function to return a dynamic array of size 10 filled with random integers.
module data_assign2;
  
  //ADD_CODE : Create a dynamic array of type int 
  
  initial 
    begin
      //Declare array = rand_array();
    foreach (array[i]) begin
      $display("array[%0d] = %0d", i, array[i]);
    end
  end
endmodule
