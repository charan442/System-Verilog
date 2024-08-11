class monitor;
  virtual intf vinf;
  mailbox mon2scb;
  function new(virtual intf vinf, mailbox mon2scb);
    this.vinf = vinf;
    this.mon2scb = mon2scb;
  endfunction
  
  task main();
    repeat(2)
      begin
        transaction trans;
        trans = new();
        trans.a = vinf.a;
        trans.b = vinf.b;
        trans.c = vinf.c;
        trans.sum = vinf.sum;
        trans.carry = vinf.carry;
        mon2scb.put(trans);
        $display("monitor class signals");
      end
  endtask
endclass
