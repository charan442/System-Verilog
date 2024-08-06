
module data_type_int;  
 int int_data; 
 
initial begin
  
  $display("\n//int is 32-bit signed");
  $display("\nBefore initialization Default value of int = %0b",int_data);
  
  int_data = 32'b110100101010; 

  $display("\nAfter initialization value of int = %0b", int_data);

  int_data = 2147483647; 

  $display("\nAfter initialization maximum value of int = %0b\n", int_data);
end
endmodule


OUTPUT:::::::

VSIMSA: Configuration file changed: `/home/runner/library.cfg'
ALIB: Library "work" attached.
work = /home/runner/work/work.lib
MESSAGE "Unit top modules: data_type_int."
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
# SLP: Elaboration phase ... done : 0.1 [s]
# SLP: Generation phase ...
# SLP: Generation phase ... done : 0.1 [s]
# SLP: Finished : 0.2 [s]
# SLP: 0 primitives and 1 (100.00%) other processes in SLP
# SLP: 1 (100.00%) signals in SLP and 0 interface signals
# ELAB2: Elaboration final pass complete - time: 0.2 [s].
# KERNEL: SLP loading done - time: 0.0 [s].
# KERNEL: Warning: You are using the Riviera-PRO EDU Edition. The performance of simulation is reduced.
# KERNEL: Warning: Contact Aldec for available upgrade options - sales@aldec.com.
# KERNEL: SLP simulation initialization done - time: 0.0 [s].
# KERNEL: Kernel process initialization done.
# Allocation: Simulator allocated 4664 kB (elbread=427 elab2=4103 kernel=134 sdf=0)
# KERNEL: ASDB file was created in location /home/runner/dataset.asdb
# KERNEL: 
# KERNEL: //int is 32-bit signed
# KERNEL: 
# KERNEL: Before initialization Default value of int = 0
# KERNEL: 
# KERNEL: After initialization value of int = 110100101010
# KERNEL: 
# KERNEL: After initialization maximum value of int = 1111111111111111111111111111111
# KERNEL: 
# KERNEL: Simulation has finished. There are no more test vectors to simulate.
# VSIM: Simulation has finished.
