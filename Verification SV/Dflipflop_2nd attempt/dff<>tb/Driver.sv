class driver;
  transaction trans;
  mailbox mail;
  virtual operation intf;
  
  function new(virtual operation intf, mailbox mail);
    this.intf = intf;
    this.mail = mail;
  endfunction
  
  task drive;
    repeat(5)
      begin
        trans = new();
        mail.get(trans);
        intf.d = trans.d;
        intf.q = trans.q;
        $display("trans is received");
      end
  endtask 
endclass
   
