module data_type_time;
  time time_data;
  
  initial begin
    
    $display("\n//time is 64-bit unsigned integer");
    
    $display("\nBefore initialization initial value of time = %0t",time_data);
    
    #10;
    time_data =$time;
    
    $display("\nAfter initialization value of time = %0t\n", time_data);
    
  end
  
endmodule

///////////////OUTPUT/////////////////////

Compiler version U-2023.03-SP2_Full64; Runtime version U-2023.03-SP2_Full64;  Nov 19 04:43 2024

//time is 64-bit unsigned integer

Before initialization initial value of time = 0

After initialization value of time = 10

           V C S   S i m u l a t i o n   R e p o r t 
Time: 10 ns
CPU Time:      0.430 seconds;       Data structure size:   0.0Mb
Tue Nov 19 04:43:23 2024
