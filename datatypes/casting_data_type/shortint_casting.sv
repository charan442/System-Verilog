module casting_shortint();
 //declare variable shortint, int and longint type
 shortint shortint_data;
 int int_data;
 longint longint_data;

 initial begin

   shortint_data = 8'b10110011; // assign shortint data

   $display("\nsize of shortint = %0d",$size(shortint_data));
   $display("before casting shortint_data = %b",shortint_data);

   int_data = int'(shortint_data);  // casting - shortint to int

   $display("after casting shortint to int = %b\n",int_data);

   longint_data = longint'(shortint_data);  // casting shortint to longint

   $display("after casting shortint to longint = %b\n",longint_data);

 end
endmodule 


OUTPUT::::::::::::::::::::::::::::

# KERNEL: size of shortint = 16
# KERNEL: before casting shortint_data = 0000000010110011
# KERNEL: after casting shortint to int = 00000000000000000000000010110011
# KERNEL: 
# KERNEL: after casting shortint to longint = 0000000000000000000000000000000000000000000000000000000010110011
# KERNEL: 
# KERNEL: Simulation has finished. There are no more test vectors to simulate.
# VSIM: Simulation has finished.
