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
  
//Declared a unbounded queue of type int 
int q_int[$];
        
//Assigned values to the queue elements 
q_int = {500,1000,500,200,400,500,600,700,900,200,0};

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
    // Add the array functions or methods to find the repeated values:
    // Delete the duplicate elements from the array
    // Display the size and value of the modified  array size in an empty function
    // Expected output is size is 4
    // packet  = `{32,4,31,2};

    //Assigned values to the queue elements 
    q_int = {500,1000,500,200,400,500,600,700,900,200,0};        
     

    //Display the size and values of all the queue elements 
    //Assign 10 multiple of 100s values to the existing queue.
    //Add the queue functions or methods to find the repeated values:
    //Delete the duplicate elements from the queue
    //Display the size and value of the modified queue in an empty function
    //Expected output is size is 8
    // q_int = `{500,1000,200,400,600,700,900,0}


    #10 $finish;
  end
endmodule
