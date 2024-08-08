`include "transaction.sv"
`include "generator.sv"
`include "driver.sv"
`include "monitor.sv"
`include "scoreboard.sv"

class environment;
  
  virtual operation vintf;
  generator gen;
  driver driv;
  mailbox mail;
  monitor mon;
  scoreboard scb;
  
  function new(virtual operation vintf,mailbox mail);
    this.vintf=vintf;
    this.mail=mail;
  endfunction
  
   task memory;
     mail = new();
    gen = new(mail);
    driv = new(vintf,mail);
     mon = new(vintf,mail); 
     scb = new(mail);
   endtask

   task run;
   fork
    gen.gene;
    driv.drive;
    mon.main;
    scb.main;
   join
   endtask
endclass
