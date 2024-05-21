/************************************************************************
Author: Mirafra Technologies Pvt Limited
        By Priya Ananthakrishnan
Filename:	data_assign1.sv  
Date:   	21st May 2022
Version:	1.0
Description: Concept of array methods  
***************************************************************************/
module data_assign6;
  bit [7:0] array [int];
  int index;  
  initial 
    begin    
      array[5] = 2;
      array[10] = 4;
      array[7] = 6;
      array[9] = 8;
      array[20] = 10;
      array[13] = 12;
      foreach (array[i]) $display("array[%0d] = %0d", i, array[i]);
      $display("size = %0d, Number of entries = %0d of array", array.size(), array.num());
      $display("--------------------------");

      if(array.exists(7)) $display("An element exists at index = 7");
      else $display("An element doesn't exists at index = 7");

      if(array.exists(8)) $display("An element exists at index = 8");
      else $display("An element doesn't exists at index = 8");

      $display("--------------------------");

      array.first(index);
      $display("First index of array = %0d", index);
      array.last(index);
      $display("Last index of array = %0d", index);
      index = 9;
      array.prev(index); 
      $display("Prev index of 9 is %0d", index);
      index = 10;
      array.next(index); 
      $display("Next index of 10 is %0d", index);

      $display("--------------------------");

      array.delete(7);
      $display("After deleting element having index 7");
      foreach (array[i]) $display("array[%0d] = %0d", i, array[i]);
      $display("--------------------------");

      array.delete();
      $display("size = %0d of array", array.size());
    end
endmodule
