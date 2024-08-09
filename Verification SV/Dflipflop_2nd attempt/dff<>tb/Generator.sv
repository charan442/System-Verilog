class generator;
  transaction trans;
  mailbox mail;
  function new(mailbox mail);
    this.mail = mail;
  endfunction
  
  task gener;
    repeat(5)
      begin
        trans = new();
        trans.randomize();
        mail.put(trans);
        $display("trans is generated");
        
        #5;
      end
  endtask
endclass

       
