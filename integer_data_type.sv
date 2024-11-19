module data_type_integer;
  
  integer integer_data;
  
  initial begin
    
    $display("\n//integer is 4_state 32-bit signed number");
    
    $display("\nBefore initialization default value of integer =%0b",integer_data);
    
    integer_data = 32'b11x1_101x_1xz0_0000;
    
    $display("\nAfter initialization value of integer = %0b\n",integer_data);
    
  end
endmodule


////////////////////OUTPUT//////////////////////////
Compiler version U-2023.03-SP2_Full64; Runtime version U-2023.03-SP2_Full64;  Nov 19 04:31 2024

//integer is 4_state 32-bit signed number

Before initialization default value of integer =xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx

After initialization value of integer = 11x1101x1xz00000

           V C S   S i m u l a t i o n   R e p o r t 
Time: 0 ns
CPU Time:      0.470 seconds;       Data structure size:   0.0Mb
Tue Nov 19 04:31:03 2024
