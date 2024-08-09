class monitor;
  transaction trans;
  mailbox mail;
  virtual operation intf;
  function new(virtual operation intf, mailbox mail);
    this.intf = intf;
    this.mail = mail;
  endfunction
  
  task monit;
    repeat(5)
      begin
        trans = new();
        mail.put(trans);
        trans.d = intf.d;
        trans.q = intf.q;
         #5;
        $display("trans is received from DUT");
      end
  endtask
endclass
        
 
