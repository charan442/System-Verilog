class name;
  rand bit [1:0] sel;
  rand bit [4:0] addr;
 
  constraint c1{sel == 2;}
  constraint c2{addr == sel *4;}
endclass

module test;
  name d_c1;
  initial begin
    d_c1=new();
    repeat(5) begin
      d_c1.randomize();
      $display("sel = %0d,addr = %0d",d_c1.sel,d_c1.addr);
    end
  end
endmodule
  

