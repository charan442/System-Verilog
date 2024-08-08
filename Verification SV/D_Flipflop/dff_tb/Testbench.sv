`include"dfftest,sv"
`include"interface.sv"

module D_flipflip(
  dfftest test,
  mailbox mail,
  intf intff();
  D_flipflop inst(
    .d(intff.d),
    .q(intff.q),
    .clk(intff.clk),
    .rst(intff.rst));
  
  initial begin 
    mail = new();
    test = new(intff,mail);
    fork
      test.memory;
      test.run;
    join
  end
  endmodule
  

  
    
