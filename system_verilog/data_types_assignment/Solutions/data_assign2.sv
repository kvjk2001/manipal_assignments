// Write a function to return a dynamic array of size 10 filled with random integers.
module data_assign2;
  int a[];
  int max_value;
  int array[$];
  int second_largest;

  //Part 1
  //ADD_CODE: Declare a function and input the size 
  function int with_array_function(input int size,output int a[]);
    int max_value[$];
  //ADD_CODE: Inside the function declare and create the array
    a=new[size];
  //ADD_CODE: Use the appropriate loop to randomize the elemants of the array
    foreach(a[i])
      a[i]=$urandom_range(10,50);
  //Part 2a
  //ADD_CODE: The array method to return the maximum value stored in the array
   max_value = a.max();
    with_array_function=max_value[0];
    
 endfunction

  //part 2b
  //ADD_CODE: Modify the Part 1 function to arrange the array with out array method
  //ADD_CODE: write a function to arrange the the array in the ascending order
  //HINT : using a loop you can compare the values of the array with previous value
  
  function int without_array_function (input int a[$],output int second_element);
  int temp;
  foreach(a[i]) begin
    foreach(a[j]) begin
      if(a[j]>a[i]) begin
          temp = a[i];
          a[i] = a[j];
          a[j] = temp;        
      end
    end
  end
    second_element=a[a.size()-2];
    return a[a.size()-1];
endfunction

  initial 
    begin 
      repeat(30) begin
      //ADD_CODE: call the function
     max_value=with_array_function(10,a);
      //ADD_CODE: Display the elements of the dynamic array
      $display("The elements of the dynamic array%p",a);
      //ADD_CODE: Display the array and the maximum value 
      $display("The maximum value is %d",max_value);
      //ADD_CODE: Display the maximum value of the array and second largest value in the array
      array=a;
      $display("The maximum value is %d",without_array_function(array,second_largest)); 
      $display("The maximum value is %d",second_largest);
    end
    end
endmodule
