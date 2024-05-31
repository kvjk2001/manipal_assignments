module data_assign4;
 //To create the instance of the structure
  typedef struct{
int coins;
real rupees;
} money;
  initial 
    begin
      money wallet;
      //Assign directvalues to the structure variables
      wallet='{10,5.5};
      //Display the values of the memebers
      $display("Structure wallet with values assigned directly: %p", wallet);
      //Assign values using the memebers name
      wallet.coins=20;
      wallet.rupees=10.5;
      //Display the values 
      $display("Structure wallet with values assigned using members name: %p", wallet);
      //Assign all elements of structure to zero
      wallet='{0,0};
      //Display the values 
      $display("Structure wallet with values assigned to zero : %p", wallet);
  end
endmodule
