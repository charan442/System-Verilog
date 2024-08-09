// Code your testbench here
// or browse Examples
`include "interface.sv"
`include "test.sv"

module D_flipfloptest;
test tes;
mailbox mail;
operation intf();
  
  D_flipflop inst(
    .clk(intf.clk),
    .d(intf.d),
    .rst(intfrst),
    .q(intf.q)
  );
  initial begin
    mail = new();
    tes = new(intf, mail);
    fork
      tes.memory;
      tes.run;
    join 
  end
  
  initial begin
    intf.clk = 0;
   
    forever #5 intf.clk = ~intf.clk;
  end
  
  initial begin 
   #10 intf.rst = 1;
   #20 intf.rst = 0;
  end
  
  initial begin
    $monitor("clk = %b, d = %b, rst = %b, q = %b", intf.clk, intf.d, intf.rst, intf.q);
    #50;
    $finish;
  end
endmodule

    
  
