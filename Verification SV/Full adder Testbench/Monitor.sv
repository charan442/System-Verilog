class monitor;
  virtual operation vintf;
  mailbox mail;
  
  function new( virtual operation vintf, mailbox mail);
    this.vintf = vintf;
    this.mail = mail;
  endfunction
  
  task main;
    repeat(8)
      #5
      begin
      transaction trans;
        trans = new();
        
        trans.a = vintf.a;
        trans.b = vintf.b;
        trans.c = vintf.c;
        trans.sum = vintf.sum;
        trans.carry = vintf.carry;
        
        mail.put(trans);
      end
  endtask
endclass
