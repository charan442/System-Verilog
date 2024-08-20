module ex;
  integer data;
  bit[3:0] addr;
  
  initial begin
    repeat(3) begin
      data=$random;
      addr=$unsigned($random);
      
      $display("data = %0d,addr = %0d",data,addr);
    end
  end
endmodule
               
          
