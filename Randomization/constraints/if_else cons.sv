class data;
  rand bit sel;
  rand bit[4:0] out;
  
  constraint c1{if(sel == 1)
    out == 5;
                else
                  out == 10;
               }
endclass

module test;
  data d_g1;
  initial begin
    d_g1=new();
    repeat(5) begin
      d_g1.randomize();
      $display("sel = %0d,out =%0d",d_g1.sel,d_g1.out);
    end
  end
endmodule
