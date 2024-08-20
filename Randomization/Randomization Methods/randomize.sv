class data_frame;
  rand bit[3:0] data;
  rand bit[3:0] parity;
endclass

module test;
  data_frame d_f1;
  initial begin
    d_f1 = new();
    repeat(5) begin
      d_f1.randomize();
      $display("data = %0d,parity = %0d",d_f1.data,d_f1.parity);
    end
  end
endmodule
