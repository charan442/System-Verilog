module dynamic;
int da [];
initial
begin

  da = new[5];
  da ='{1,2,5,6,8};
  $display(" //\n The dynamic array elements: \n %0p",da);

  $display("");

    $display(" //printring the value of  the each index place");
  foreach(da[i])
    
//displaying  the value of each index position
    $display("da[%0d] = %0d",i,da[i]);

    $display("");
    //initializing the out of bound memory
    $display("//out of bound ", "display default value of data_type ","\n\tda[1024]=%0d",da[1024]);

$display(" ");
  end
  
  endmodule


OUTPUT::::::
# KERNEL:  The dynamic array elements: 
# KERNEL:  1 2 5 6 8
# KERNEL: 
# KERNEL:  //printring the value of  the each index place
# KERNEL: da[0] = 1
# KERNEL: da[1] = 2
# KERNEL: da[2] = 5
# KERNEL: da[3] = 6
# KERNEL: da[4] = 8
# KERNEL: 
# RUNTIME: Warning: RUNTIME_0222 design.sv (20): Index 1024 is out of array dimension bounds [0:4].
# KERNEL: Time: 0 ns,  Iteration: 0,  Region: \.
# KERNEL: //out of bound display default value of data_type 
# KERNEL: 	da[1024]=0
# KERNEL:  
# KERNEL: Simulation has finished. There are no more test vectors to simulate.
# VSIM: Simulation has finished.
