class packet;
  bit [31:0] addr;
  bit [31:0] data;
  bit        write;
  string pkt_type;
  
  //constructor
  function new();
    this.addr = 32'h10;
    this.data = 32'hFF;
    this.write = 1;
    this.pkt_type = "GOOD_PKT";
  endfunction
  
  //method to display class properties
  function void display();
    $display("-------------------------------------------");
    $display("\t addr = %0h",addr);
    $display("\t data = %0h",data);
    $display("\t write = %0h",write);
    $display("\t pkt_type = %0s",pkt_type);
    $display("--------------------------------------------");
  endfunction
endclass

module sv_constructor;
  packet pkt;
  initial begin
    pkt = new();
    pkt.display();
  end
endmodule
