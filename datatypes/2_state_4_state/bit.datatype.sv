module data_type_bit;   
bit single_bit_data;   
bit [3:0] multi_bit_data; 

initial begin
  $display("\nBefore initialization Default value of single bit data = %0b", single_bit_data);
  $display("Before initialization Default value of 4 bit data = %0b", multi_bit_data);

  single_bit_data =1;
  multi_bit_data = 4'b1100; 

  $display("\nAfter initialization value of single bit data = %0b", single_bit_data);
  $display("After initialization value of 4 bit data = %0b", multi_bit_data);

  multi_bit_data = 4'b11xz; 
  
  $display("\n//initialization x and z of 4-bit data = 4'b11xz");

  
    $display("\nAfter assign x and z, value of 4 bit data = %0b\n", multi_bit_data);
  end
endmodule


OUTPUT:::

VSIMSA: Configuration file changed: `/home/runner/library.cfg'
ALIB: Library "work" attached.
work = /home/runner/work/work.lib
MESSAGE "Unit top modules: data_type_bit."
SUCCESS "Compile success 0 Errors 0 Warnings  Analysis time: 0[s]."
done
# Aldec, Inc. Riviera-PRO version 2023.04.112.8911 built for Linux64 on May 12, 2023.
# HDL, SystemC, and Assertions simulator, debugger, and design environment.
# (c) 1999-2023 Aldec, Inc. All rights reserved.
# ELBREAD: Elaboration process.
# ELBREAD: Elaboration time 0.0 [s].
# KERNEL: Main thread initiated.
# KERNEL: Kernel process initialization phase.
# ELAB2: Elaboration final pass...
# ELAB2: Create instances ...
# KERNEL: Time resolution set to 1ns.
# ELAB2: Create instances complete.
# SLP: Started
# SLP: Elaboration phase ...
# SLP: Elaboration phase ... done : 0.0 [s]
# SLP: Generation phase ...
# SLP: Generation phase ... done : 0.1 [s]
# SLP: Finished : 0.1 [s]
# SLP: 0 primitives and 1 (100.00%) other processes in SLP
# SLP: 2 (100.00%) signals in SLP and 0 interface signals
# ELAB2: Elaboration final pass complete - time: 0.1 [s].
# KERNEL: SLP loading done - time: 0.0 [s].
# KERNEL: Warning: You are using the Riviera-PRO EDU Edition. The performance of simulation is reduced.
# KERNEL: Warning: Contact Aldec for available upgrade options - sales@aldec.com.
# KERNEL: SLP simulation initialization done - time: 0.0 [s].
# KERNEL: Kernel process initialization done.
# Allocation: Simulator allocated 4665 kB (elbread=427 elab2=4104 kernel=134 sdf=0)
# KERNEL: ASDB file was created in location /home/runner/dataset.asdb
# KERNEL: 
# KERNEL: Before initialization Default value of single bit data = 0
# KERNEL: Before initialization Default value of 4 bit data = 0
# KERNEL: 
# KERNEL: After initialization value of single bit data = 1
# KERNEL: After initialization value of 4 bit data = 1100
# KERNEL: 
# KERNEL: //initialization x and z of 4-bit data = 4'b11xz
# KERNEL: 
# KERNEL: After assign x and z, value of 4 bit data = 1100
# KERNEL: 
# KERNEL: Simulation has finished. There are no more test vectors to simulate.
# VSIM: Simulation has finished.
