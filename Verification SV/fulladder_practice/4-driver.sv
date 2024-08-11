class driver;
  virtual intf vinf;
  mailbox gen2drv;
  function new(virtual intf vinf, mailbox gen2drv);
    this.vinf = vinf;
    this.gen2drv = gen2drv;
  endfunction
  
  task main();
    repeat(2)
      begin
        transaction trans;
        gen2drv.get(trans);
        vinf.a <= trans.a;
        vinf.b <= trans.b;
        vinf.c <= trans.c;
        //trans.sum <= vinf.sum;
        //trans.carry <= vinf.carry;
        #1;
        $display("driver class signals");
      end
  endtask 
endclass
