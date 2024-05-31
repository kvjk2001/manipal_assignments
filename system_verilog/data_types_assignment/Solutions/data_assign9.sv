function void unique_array(output int A[],int B[],int AB[int]);
  A = new[10];
  B = new[10];
  foreach(A[i]) begin
    A[i] = $urandom_range(1,20);
    B[i] = $urandom_range(1,20);
  end
  foreach(A[i])
    AB[i] = A[i];
  foreach(B[i])
    AB[i+10] = B[i];
  foreach(AB[i]) begin
    foreach(AB[j]) begin
      if((i!=j) && (AB[i] == AB[j])) begin
        AB.delete(j);
      end
    end
  end
endfunction



module array_module;
  int A[], B[], AB[int];
  initial 
    begin
      repeat (10)
        begin
        //ADD_CODE: Call the function
          unique_array(A,B,AB);  
        //ADD_CODE: Display the all three array elements
          $display("A = %p \nB = %p\nAB = %p",A,B,AB); 
        end
    end
endmodule
