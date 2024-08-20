module ex;
  bit[7:0] data;

  initial begin
    repeat(3) begin
      std::randomize(data);
      $display("data = %0d",data);
    end
    end
endmodule

    
