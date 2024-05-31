module data_assign10 (); 

  // Example: Split the dyn_arr_b[0]=ffffffff  to 
  // dyn_arr_a[0]=ff, dyn_arr_a[1]=ff , dyn_arr_a[2]=ff, dyn_arr_a[3]=ff.
  
  //Declare a packed array of size 32 bit named dyn_arr_b
  bit[31:0] dyn_arr_b;
  //Declare a multidimensional array dyn_arr_a as specified in the example 
  bit dyn_arr_a[][];

  int n;
  initial 
    begin
      
      n=32;
      //create and randomize the dyn_arr_b ;
        dyn_arr_b=$urandom;
      //create and assign size for the dyn_arr_a
      dyn_arr_a=new[4]; //4 rows are created
      foreach(dyn_arr_a[i])
        dyn_arr_a[i]=new[8]; // 8 columns are created
     // dyn_arr_a=new[4](dyn_arr_a);
     
      //Write the logic (loops) to split the dyn_arr_b and assign the values to dyn_arr_a
    foreach(dyn_arr_a[i])begin
      foreach(dyn_arr_a[i][j])begin
        dyn_arr_a[i][j]=dyn_arr_b[n-1];
        n=n-1;      
      end
    end     
      //Display both the arrays 
       $display("dyn_arr_b=%h",dyn_arr_b);
      $display("dyn_arr_a=%p",dyn_arr_a); 
      
    
  end
endmodule

