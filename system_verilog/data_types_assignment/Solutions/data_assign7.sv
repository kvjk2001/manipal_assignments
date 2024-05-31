module data_assign7;
  //ADD_CODE: Declare a queue with unbounded value off type bit[7:0]
  bit[7:0] unbound_queue[$];
  bit[7:0] reverse_queue_with_method[$];
  bit[7:0] reverse_queue_without_method[$];
  //ADD_CODE: Write a function to assign 15 random values to the queue
  function void random_values_generator(output bit[7:0] out_queue[$]);
    for(int i = 0; i<15; i++)begin
      out_queue[i] = $random;
    end
    //ADD_CODE: Display all the elements of the queue and size of the queue
    $display("unbound queue: %p,Size: %0d",out_queue, out_queue.size);
  endfunction
  
  //ADD_CODE: Write a function to reverse the elements of the queue without queue method
  function void reverse_array_generator(input bit[7:0] in_queue[$], output bit[7:0] reverse_queue[$]);
    bit[7:0] temp;
    
    foreach(in_queue[i]) begin
      if(i<= in_queue.size/2) begin
        temp = in_queue[i];
        in_queue[i] = in_queue[in_queue.size - 1 - i];
        in_queue[in_queue.size - 1 - i] = temp;
      end
    end
    reverse_queue = in_queue;
  endfunction
  initial 
    begin
      random_values_generator(unbound_queue);
      //ADD_CODE:ADD a queue method to reverse the elements of the code
      reverse_queue_with_method = unbound_queue;
      reverse_queue_with_method.reverse;
      //ADD_CODE: HINT Add loops
      //ADD_CODE: Display the reversed queue elements and size
      $display("Reversed queue with using queue method: %p, Size: %0d", reverse_queue_with_method, reverse_queue_with_method.size);
      //ADD_CODE: Call the function to display the reverse elements of the above queue
      reverse_array_generator(unbound_queue, reverse_queue_without_method);
      //ADD_CODE: Display the elements. The queue elements matches with original value
      $display("Reversed queue without using queue method: %p",reverse_queue_without_method);
      
    end
endmodule

