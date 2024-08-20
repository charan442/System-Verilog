class data_frame;
  rand bit[4:0] data;
  constraint cons{data >=10; data <=30;}
endclass

module test;
  data_frame d_g1;
  initial begin
    d_g1=new();
    
    repeat(6) begin
      d_g1.randomize();
      $display("data = %0d",d_g1.data);
    end
  end
endmodule
