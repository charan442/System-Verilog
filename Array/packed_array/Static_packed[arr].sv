module packet_array;
  bit   [3:0]  abc;
  logic [15:0] pqr;
  reg   [7:0]  xyz;
  
  initial begin
    abc = 4'b1001;
    pqr = 16'h10fe;
    xyz = 8'd16;
    
    $display("");
    $display("// example for single dimensional array");
    $display("");
    
    $display("// displaying the bit data type values");
    foreach(abc[i]) begin 
      $display("data of abc[%d] = %b",i,abc[i]);
    end
    $display("");
    $display("// displaying the logic data type values");
    foreach(pqr[i]) begin
      $display("data of pqr[%d] = %b",i,pqr[i]);
    end
    $display("");
    $display("// displaying the reg data type values");
    foreach(xyz[i]) begin
      $display("data of xyz[%d] = %b",i,xyz[i]);
    end
    $display("");
  end
endmodule
      
