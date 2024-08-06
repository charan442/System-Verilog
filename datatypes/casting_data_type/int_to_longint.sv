module casting_int();

 int int_data; 
 longint longint_data;

 initial begin

   int_data = 8'b11110011; 

   $display("\nsize of int = %0d",$size(int_data));
   $display("before casting int_data = %b",int_data);

   longint_data = longint'(int_data); 

   $display("after casting int to longint = %b\n",longint_data);

 end
endmodule

OUTPUT::::::::::::::::::::::::::::::::::::::::::::::

# KERNEL: size of int = 32
# KERNEL: before casting int_data = 00000000000000000000000011110011
# KERNEL: after casting int to longint = 0000000000000000000000000000000000000000000000000000000011110011
# KERNEL: 
# KERNEL: Simulation has finished. There are no more test vectors to simulate.
# VSIM: Simulation has finished.
