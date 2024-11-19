module data_type_real;
  
  real real_data;
  
  initial begin
    
    $display("\n//real is 64-bit real number");
    
    $display("\nBEfore initialization default value of real = %0d",real_data);
    
    real_data =7.77;
    
    $display("\nAfter initialization value of real =%f\n", real_data);
    
  end
  
endmodule

/////////////////////output//////////////////////////



Compiler version U-2023.03-SP2_Full64; Runtime version U-2023.03-SP2_Full64;  Nov 19 04:55 2024

//real is 64-bit real number

BEfore initialization default value of real = 0

After initialization value of real =7.770000

           V C S   S i m u l a t i o n   R e p o r t 
Time: 0 ns
CPU Time:      0.340 seconds;       Data structure size:   0.0Mb
Tue Nov 19 04:55:45 2024
