module packed_array;
  
  bit [4:0]abc;
  logic [12:0]pqr;
  reg [7:0]xyz;
  
  initial begin
    
    abc =4'b10000;
    pqr =16'h45a;
    xyz =8'd16;
    
    $display("");
    $display("// example for single dimensional packed array");
    $dsiplay("");
    
    $display("// dsiplaying the bit data type values");
    foreach(abc[i]) begin
      $display ("data of abc[%0d] = %0b", i,abc[i]);
    end
    $display("");
    
    $display("// displaying the logic data type values");
    foreach(pqr[i]) begin
      $display("data of pqr[%0d] = %0b",i,pqr[i]);
    end
    $display("");
    
    $display("// displaying the reg data type values");
    foreach(xyz[i]) begin
      $display("data of xyz [%0d] = %0b",i,xyz[i]);
    end
    $display("");
  end
  
endmodule

             
    
