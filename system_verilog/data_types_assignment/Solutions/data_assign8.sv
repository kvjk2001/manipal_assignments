module data_assign8 (); // module name and file name same
  
  int dyn_arr[]; //ADD_CODE: Declare a dynamic array of dyn_arr
  int size=50;  //ADD_CODE: Declare the the size of an array
  int assoc_arr[int];
  //ADD_CODE: write a function to assign even values to the first 50 elements of the array
  function void even_values_dyn(input int dyn_arr[],input int size1, output int out_dyn_arr[]);
    dyn_arr=new[size1];
    foreach(dyn_arr[i]) begin
      if(i%2 == 0)
        dyn_arr[i] = i;
      else
        dyn_arr[i] = i+1;
    end
    out_dyn_arr = dyn_arr;

  endfunction
  function void odd_values_dyn(input int dyn_arr[],input int size1, output int out_dyn_arr[]);
    dyn_arr=new[size1](dyn_arr);
    foreach(dyn_arr[i]) begin
      if(i>=size) begin
        if(i%2 != 0)
          dyn_arr[i] = i;
        else
        dyn_arr[i] = i+1;
      end
    end
      
    out_dyn_arr = dyn_arr;

  endfunction
  function void even_values_asso(input int assoc_arr[int],input int size1, output int out_assoc_arr[int]);
    for(int i = 0; i<size1; i++) begin
      if(i%2 == 0)
        assoc_arr[i] = i;
      else
        assoc_arr[i] = i+1;
      
    end
    out_assoc_arr = assoc_arr;

  endfunction
  
  function void odd_values_asso(input int assoc_arr[int],input int size1, output int out_assoc_arr[int]);
    for(int i = size; i<size1; i++) begin
      if(i%2 != 0)
        assoc_arr[i] = i;
      else
        assoc_arr[i] = i+1;
      
    end
    out_assoc_arr = assoc_arr;

  endfunction
  initial begin
    
    //ADD_CODE: Display the value of the array 
    even_values_dyn(dyn_arr, size, dyn_arr);
    $display("50 elements of dynamic array: %p", dyn_arr);
    //ADD_CODE: Now write another function to add odd values to the last 50 elements 
    
  //ADD_CODE: Display all the 100 elements of the array
    odd_values_dyn(dyn_arr, 100, dyn_arr);
    $display("100 elements of dynamic array: %p", dyn_arr);
    //ADD_CODE: Now write another function to 
  //ADD_CODE: Write a method to delete the 90th element of the array
  
    dyn_arr = {dyn_arr[0:89], dyn_arr[91:100]};
    
    $display("Dynamic array after deleting 90th element: %p",dyn_arr);
    //ADD_CODE: Write a method to delete the compelte array
    dyn_arr.delete;
    $display("Dynamic array after deleting: %p", dyn_arr);
    
  //Please repeat the same code with associative array with name assoc_arr and compare your findings
    even_values_asso(assoc_arr, size, assoc_arr);
    $display("50 element of associative array: %p",assoc_arr);
    odd_values_asso(assoc_arr, 100, assoc_arr);
    $display("100 element of associative array: %p",assoc_arr);
    assoc_arr.delete(90);
    $display("Associative array after deleting 90th element: %p",assoc_arr);
    assoc_arr.delete;
    $display("Associative array after deleting: %p", assoc_arr);
  end
endmodule

