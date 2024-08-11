`include "transaction.sv"
`include "generator.sv"
`include "driver.sv"
`include "monitor.sv"
`include "scoreboard.sv"

class environment;
  generator gen;
  driver drv;
  monitor mon;
  scoreboard scb;
  
  mailbox gen2drv;
  mailbox mon2scb;
  
  virtual intf vinf;
  function new(virtual intf vinf);
    this.vinf = vinf;
    
    gen2drv = new();
    mon2scb = new();
    gen = new(gen2drv);
    drv = new(vinf,gen2drv);
    mon = new(vinf,mon2scb);
    scb = new(mon2scb);
  endfunction
  
  task test_run();
    fork
      gen.main();
      drv.main();
      mon.main();
      scb.main();
    join
  endtask
endclass
