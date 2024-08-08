class scoreboard;
  mailbox mail;
  
  function new(mailbox mail);
    this.mail = mail;
  endfunction
  
  task main();
    transaction trans;
    repeat(8)
      
    begin
    mail.get(trans);
      
      if( ( ( trans.a ^ trans.b ^ trans.c) == trans.sum) && ((( trans.a & trans.b ) | ( trans.b & trans.c ) | (trans.c & trans.a)) == trans.carry))
        $display("******* PASS *******");  
        
      else
      $display("!!!!!!!! FAIL !!!!!!!!!!");
   
        


      end
  endtask
  
endclass
   
      
        
