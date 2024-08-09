`include "environment.sv"

class test;
  environment envi;
  mailbox mail;
  virtual operation intf;
  
  function new(virtual operation intf, mailbox mail);
    this.intf = intf;
    this.mail = mail;
  endfunction
  
  task memory;
    mail = new();
    envi = new(intf,mail);
  endtask
  
  task run;
    fork
      
      envi.memory;
      envi.run;
      
    join
    $display("envi in test");
  endtask
endclass
    
