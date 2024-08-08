class monitor;
  mailbox mail;
  virtual intf intff;
  function new(virtual intf intff, mailbox mail);
    this.intff = intff;
    this.mail = mail;
  endfunction
  
  task mon;
    repeat(5)
      begin
        trans = new();
        
        trans.d = intff.d;
        trans.q = intff.q;
        trans.clk = intff.clk;
        trans.rst = intff.rst;
        
        mail.put(trans);
      end
  endtask
endclass
