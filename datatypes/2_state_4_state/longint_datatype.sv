
module data_type_longint;  
 longint longint_data; 
 
initial begin
  
  $display("\n//longint is 64-bit signed ");
  $display("\nBefore initialization Default value of longint = %0b",longint_data);
  
  longint_data = 64'b11x01xz001x01010; 

  $display("\nAfter initialization value of longint = %0b\n", longint_data);

 end
endmodule


OUTPUT::::::::

# KERNEL: //longint is 64-bit signed 
# KERNEL: 
# KERNEL: Before initialization Default value of longint = 0
# KERNEL: 
# KERNEL: After initialization value of longint = 1100100001001010
# KERNEL: 
# KERNEL: Simulation has finished. There are no more test vectors to simulate.
# VSIM: Simulation has finished.
