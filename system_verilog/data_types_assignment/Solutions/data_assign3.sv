module data_assign3_bug;
int arr[];
int packet = 10;
        
initial 
  begin  
    //Declaring the size of the dynamic array   
    arr = new[2];
    arr = new[3] (arr);  

    //Assigning values to the array 
    foreach(arr[i])
      begin
        arr[i] = packet + 5;
        packet += 5;
              $display("arr[%0d] =%0d",i,arr[i]);
      end
    end
endmodule
