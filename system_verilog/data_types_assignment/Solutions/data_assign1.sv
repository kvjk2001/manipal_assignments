// Code your testbench here
// or browse Examples
function void display(int q_int_1[$]);
   $display("Size of unique queue: %0d, Unique queue: %p", q_int_1.size, q_int_1);
endfunction
module data_assign1 (); // module name and file name same 
  
// Declared an associative array packet of type int and index type string
int  packet[string];
  int num;
  
//Declared a unbounded queue of type int 
  int q_int[$]={500,1000,500,200,400,500,600,700,900,200,0};    
//Assigned values to the queue elements 
  int packet_1[];
  int q_int_1[$];
  string result[$];
   int queue_1[$];
  int result_queue[$];
initial 
  begin
    // Assigned values to the array elements
    packet["usb"] = 32;
    packet["sata"] = 4;
    packet["ethernet"] = 31;
    packet["PCIE"] = 2; 
    packet["PCI"] = 4;
    packet["AXI3"]=31; 
          
    // Display the size and values of all the array elements
    $display("Size of array: %0d,array: %p", packet.size, packet);
    // Add the array functions or methods to find the repeated values:
    
    // Delete the duplicate elements from the array
    // Display the size and value of the modified  array size in an empty function
    // Expected output is size is 4
    // packet  = `{32,4,31,2};
    foreach(packet[i])
      begin
        result = packet.find_index(num) with (num ==packet[i]);
        if(result.size()>1)
          packet.delete(result[0]);
      end
    $display("Packet after deleting the repeated values :  %p",packet);
 
    //Assigned values to the queue elements 
    q_int = {500,1000,500,200,400,500,600,700,900,200,0};        

    //Display the size and values of all the queue elements 
    $display("Size of queue: %0d, Queue: %p", q_int.size, q_int);
    
    //Assign 10 multiple of 100s values to the existing queue.
    for(int i=100;i<=1000;i=i+100) 
      q_int.push_back(i);
    $display("Size of queue: %0d, Queue: %p", q_int.size, q_int);
    //Add the queue functions or methods to find the repeated values:
    //Delete the duplicate elements from the queue
    //Display the size and value of the modified queue in an empty function
    //Expected output is size is 8
    // q_int = `{500,1000,200,400,600,700,900,0}
    foreach(q_int[i])
      begin
        result_queue = q_int.find_index(num) with (num ==q_int[i]);
         
        if(result_queue.size()>1)
          while(result_queue.size()>1)
          begin 
          q_int.delete(result_queue[0]);
         result_queue.delete(0);
          end
      end
    $display("Queue after deleting the repeated values :  %p",q_int);
   
    #10 $finish;
  end
endmodule
