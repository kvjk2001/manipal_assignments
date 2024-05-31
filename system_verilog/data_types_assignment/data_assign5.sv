/************************************************************************
Author: Mirafra Technologies Pvt Limited
        By Priya Ananthakrishnan
Filename:	data_assign1.sv  
Date:   	21st May 2022
Version:	1.0
Description: Concept of queue methods 
***************************************************************************/
// Without execution of the code display the values 
module queue();
int a[$]={1,2,3}; //creation of queue
int b[$]={4,5,6,7};
int j=4;
int popped_f,popped_b;
initial
  begin
    a.insert(2,j);
    $display(a);
    
    a.delete(2);
    $display(a);
    
    a.push_front(10);
    $display(a);
    a.push_back(20);
    $display(a);
    popped_f=a.pop_front();
    $display(popped_f);
    $display(a);
    popped_b=b.pop_back();
    $display(b);
    $display(popped_b);
    
    foreach(a[i])
      $write(a[i]);
    $display();
    
    foreach(b[i])
      $write(b[i]);
    $display();  
    
    a.delete();
    $display(a);
  end
endmodule
