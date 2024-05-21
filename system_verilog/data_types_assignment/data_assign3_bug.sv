/************************************************************************
Author: Mirafra Technologies Pvt Limited
        By Priya Ananthakrishnan
Filename:	data_assign1.sv  
Date:   	21st May 2022
Version:	1.0
Description: Concept of new assignment in dynamic array  
***************************************************************************/
// Clue is the creation and assigning the size  of dynamic array 
module dynamic_array;
  int arr[][];
  int packet = 10;
  initial 
    begin  
      arr = new[10];
      foreach(arr[i])
        begin
          arr[i] = new[2];
          arr[i] = new[3] (arr[i]);  // Expected that this would give arr[i][10] but didn't
        end
      
      foreach(arr[i,j])
        begin
          arr[i][j] = packet + 5;
          packet += 5;
          $display("arr[%0d][%0d] = %0d",i,j,arr[i][j]);
        end
    end
endmodule
