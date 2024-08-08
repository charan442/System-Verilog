class driver
  transaction trans;
  mailbox mail;
  virtual intf intff;
  
  function new(virtual intf intff, mailbox mail);
    this.intff = intff;
    this.mail = mail;
  endfunction
  
  task drive;
    
    repeat(5)
      begin
        trans = new();
        mail.get(trans);
        intff.d=trans.d;
        intff.q=trans.q;
        intff.clk=trans.clk;
        intff.rst=trans.rst;
        $display("trans is generated");
      end
  endtask
endclass
        
    
