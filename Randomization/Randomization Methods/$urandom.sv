module ex;
  bit[7:0] data;
  bit[3:0] addr;
  
  initial begin
    repeat(3) begin
      data=$urandom;
      addr=$urandom % 10;
      $display("data = %0d,addr = %0d",data,addr);
    end
  end
  initial begin
    repeat(5) begin
      addr=$urandom_range(2,12);
      $display("addr = %0d",addr);
    end
  end
endmodule
