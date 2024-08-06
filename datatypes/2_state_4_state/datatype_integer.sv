module data_type_integer;  
 integer integer_data; 
 
initial begin
  
  $display("\n//integer is 4-state 32-bit signed number ");
  $display("\nBefore initialization Default value of integer = %0b",integer_data);
  
  integer_data = 32'b11x0_101x_1xz0_0111; 

  $display("\nAfter initialization value of integer = %0b\n", integer_data);
  
 end
endmodule


OUTPUT:
# KERNEL: 
# KERNEL: //integer is 4-state 32-bit signed number 
# KERNEL: 
# KERNEL: Before initialization Default value of integer = xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
# KERNEL: 
# KERNEL: After initialization value of integer = 11x0101x1xz00111
# KERNEL: 
# KERNEL: Simulation has finished. There are no more test vectors to simulate.
# VSIM: Simulation has finished.
