`include "transaction.sv"
`include "generator.sv"
`include "driver.sv"
`include "monitor.sv"

class environment;
  transaction trans;
  generator gene;
  driver driv;
  monitor moni;
  mailbox mail;
  virtual operation intf;
  
  function new(virtual operation intf, mailbox mail);
    this.intf = intf;
    this.mail = mail;
  endfunction
  
  task memory;
    mail = new();
    gene = new(mail);
    driv = new(intf,mail);
    moni = new(intf,mail);
  endtask
  
  task run;
    fork
      gene.gener;
      driv.drive;
      moni.monit;
    join
    $display("packet received in environment");
  endtask
endclass
    
