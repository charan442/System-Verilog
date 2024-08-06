module integer_to_int();
 integer integer_data;
 int int_data;

 initial begin
  
   integer_data = 8'b10xz1x11;  

   $display("\nsize of integer = %0d",$size(integer_data));
   $display("before casting integer_data = %b",integer_data);

   int_data = int'(integer_data);  

   $display("after casting integer to int = %b\n",int_data);

 end
endmodule 

OUTPUT:::::::
# Loading sv_std.std
# Loading work.integer_to_int(fast)
# run -all
# 
# size of integer = 32
# before casting integer_data = 00000000000000000000000010xz1x11
# after casting integer to int = 00000000000000000000000010001011
# 
#  exit
# End time: 11:24:56 on Aug 31,2022, Elapsed time: 0:00:01
# Errors: 0, Warnings: 0
