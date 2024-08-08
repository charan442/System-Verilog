`include"transaction.sv"
`include"generator.sv"
`include"driver.sv"
`include"monitor.sv"

class environment;
  transaction trans;
  generator gene;
  driver drive;
  monitor mon;
  virtual intf intff;
  
  function new(virtual intf intff, mailbox mail);
    this.intff = intff;
    this.mail = mail;
  endfunction
  
  task memory;
    mail = new();
    gene = new(mail);
    drive = new(intff,mail);
    mon = new(intff,mail);
  endtask
  
  task run;
    fork
      generator = gene;
      driver = drive;
      monitor = mon;
    join
    $display("pkt received is envirnoment");
  endtask
endclass
