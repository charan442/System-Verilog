
class address_range;
  bit [31:0] start_address;
  bit [31:0] end_address;
  function new();
    start_address =10;
    end_address =50;
  endfunction
endclass

class packet;
  bit [31:0] addr;
  bit [31:0] data;
  address_range ar;
  
  function new();
    addr = 32'h10;
    data = 32'hff;
    ar = new();
  endfunction
  function void display();
    $display("\t addr = %0h",addr);
    $display("\t data = %0h",data);
    $display("\t start_address = %0d",ar.start_address);
    $display("\t end_address = %0d",ar.end_address);
  endfunction
endclass

module class assignment;
  packet pkt_1;
  packet pkt_2;
  initial begin
    pkt_1 = new();
    $display("\t**** calling pkt_1 display ****");
    pkt_1.display();
    pkt_2 = new pkt_1;
    $display("\t**** calling pkt_2 display ****");
    pkt_2.display();
    pkt_2.addr = 32'h68;
    pkt_2.ar.start_address = 60;
    pkt_2.ar.end_address = 80;
    $display("\t**** calling pkt_1 display after changing pkt_2 properties ****");
    pkt_1.display();
    $display("\t**** calling pkt_2 display after changing pkt_2 properties ****");
    pkt_2.display();
  end
  
  
