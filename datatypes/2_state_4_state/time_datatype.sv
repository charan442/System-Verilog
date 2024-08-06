module data_type_time; 
 time time_data; 
initial begin
  
  $display("\n//time is 64-bit unsigned integer");
  $display("\nBefore initialization initial value of time = %0t",time_data);
  
  #5;  
  time_data = $time;
  $display("\nAfter initialization value of time = %0t\n", time_data);

end
endmodule



::::::::::::::::::::::::::::OUTPUT :::::::::::::::::::::::::::::

VSIMSA: Configuration file changed: `/home/runner/library.cfg'
ALIB: Library "work" attached.
work = /home/runner/work/work.lib
MESSAGE "Unit top modules: data_type_time."
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
# SLP: 1 (100.00%) signals in SLP and 0 interface signals
# ELAB2: Elaboration final pass complete - time: 0.1 [s].
# KERNEL: SLP loading done - time: 0.0 [s].
# KERNEL: Warning: You are using the Riviera-PRO EDU Edition. The performance of simulation is reduced.
# KERNEL: Warning: Contact Aldec for available upgrade options - sales@aldec.com.
# KERNEL: SLP simulation initialization done - time: 0.0 [s].
# KERNEL: Kernel process initialization done.
# Allocation: Simulator allocated 4664 kB (elbread=427 elab2=4103 kernel=134 sdf=0)
# KERNEL: ASDB file was created in location /home/runner/dataset.asdb
# KERNEL: 
# KERNEL: //time is 64-bit unsigned integer
# KERNEL: 
# KERNEL: Before initialization initial value of time = 0
# KERNEL: 
# KERNEL: After initialization value of time = 5
# KERNEL: 
# KERNEL: Simulation has finished. There are no more test vectors to simulate.
# VSIM: Simulation has finished.
