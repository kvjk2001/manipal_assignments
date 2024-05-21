/************************************************************************
Author: Mirafra Technologies Pvt Limited
        By Priya Ananthakrishnan
Filename:	data_assign1.sv  
Date:   	21st May 2022
Version:	1.0
Description: Concept of associative array and queue data type 
***************************************************************************/
module data_assign1 (); // module name and file name same 
  
// Declared an associative array packet of type int and index type string
int  packet[string];
  
// Assigned values to the array elements
     packet["usb"] = 32;
     packet["sata"] = 4;
     packet["ethernet"] = 31;
     packet["PCIE"] = 2; 
     packet["PCI"] = 4;
     packet ["AXI3"]=31;
  
//Declared a unbounded queue of type int 
int q_int[$];
//Assigned values to the queue elements 
q_int = {500,1000,500,200,400,500,600,700,900,200,0};

initial 
  begin
    // ADD_CODE: Display the size and values of all the array elements 
    // ADD_CODE: Add the array functions or methods to find the repeated values:
    // ADD_CODE: Delete the duplicate elements from the array
    // ADD_CODE: Display the size and value of the modified  array 

    // ADD_CODE: Display the size and values of all the queue elements 
    // ADD_CODE: Assign 10 multiple of 100s values to the existing queue.
    // ADD_CODE: Add the queue functions or methods to find the repeated values:
    // ADD_CODE: Delete the duplicate elements from the queue
    // ADD_CODE: Display the size and value of the modified queue

 
  #10 $finish;
end
endmodule
