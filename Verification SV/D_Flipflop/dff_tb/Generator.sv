class generator;
  transaction trans;
  mailbox mail;
  
  function new(mailbox mail);
    this.mail = mail;
  endfunction
  
  task gene;
    repeat(5)
      begin 
        trans = new();
        trans.randomize();
        
        mail.put(trans);
        $display("packet is generated");
        #2;
      end
  endtask
endclass
