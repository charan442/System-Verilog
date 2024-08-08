`include"environment.sv"
 
class dfftest;
  environment env;
  mailbox mail;
  virtual intf intff;
  
  function new(virtual intf intff, mailbox mail);
    this.intff = intff;
    this.mail = mail;
  endfunction
  
  task memory; 
    mail = new();
    env =new(intff,mail);
  endtask
  
  
  task run;
    fork
      
    env.memory;
    env.run;
    
    join
       $display("env in test");
  endtask
endclass
