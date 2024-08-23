class A;
  int a = 3;
  function void disp();
    $display("1.value of a = %0b",a);
  endfunction
endclass

class B extends A;
  int b = 5;
  function void display();
    $display("2.value of b = %0b",b);
  endfunction
endclass

module inher;
  B b1;
  initial begin
    b1 = new();
    b1.a = 6;
    b1.display();
    b1.disp();
  end
endmodule

///////////////////////// OUTPUT ///////////////////////////////////////////////////

# Allocation: Simulator allocated 4744 kB (elbread=455 elab2=4145 kernel=143 sdf=0)
# KERNEL: ASDB file was created in location /home/runner/dataset.asdb
# KERNEL: 2.value of b = 101
# KERNEL: 1.value of a = 110
# KERNEL: Simulation has finished. There are no more test vectors to simulate.
# VSIM: Simulation has finished.
