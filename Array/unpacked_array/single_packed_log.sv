[2024-07-23 06:37:36 UTC] vlib work && vlog '-timescale' '1ns/1ns' design.sv testbench.sv  && vsim -c -do "vsim +access+r; run -all; exit"  
VSIMSA: Configuration file changed: `/home/runner/library.cfg'
ALIB: Library "work" attached.
work = /home/runner/work/work.lib
MESSAGE "Unit top modules: unpacked_array."
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
# SLP: 2 (50.00%) signals in SLP and 2 (50.00%) interface signals
# ELAB2: Elaboration final pass complete - time: 0.1 [s].
# KERNEL: SLP loading done - time: 0.0 [s].
# KERNEL: Warning: You are using the Riviera-PRO EDU Edition. The performance of simulation is reduced.
# KERNEL: Warning: Contact Aldec for available upgrade options - sales@aldec.com.
# KERNEL: SLP simulation initialization done - time: 0.0 [s].
# KERNEL: Kernel process initialization done.
# Allocation: Simulator allocated 4666 kB (elbread=427 elab2=4104 kernel=134 sdf=0)
# KERNEL: ASDB file was created in location /home/runner/dataset.asdb
# KERNEL: 
# KERNEL: // displaying values of unpacked arrays
# KERNEL: values of a[0]=4
# KERNEL: values of a[1]=5
# KERNEL: values of a[2]=6
# KERNEL: values of a[3]=2
# KERNEL: values of a[4]=3
# KERNEL: values of a[5]=7
# KERNEL: values of a[6]=9
# KERNEL: values of a[7]=10
# KERNEL: 
# KERNEL: // dispalying another unpacked array values in one line
# KERNEL: abc='{20, 28, 14, 39, 10, 33, 28, 20, 15, 29}
# KERNEL: 
# KERNEL: Simulation has finished. There are no more test vectors to simulate.
# VSIM: Simulation has finished
