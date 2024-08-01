class packet;
  //static properly to keep track of number of pkt's created
  static byte no_of_pkts_created;
  
  //constructor
  function new();
    no_of_pkts_created++;
  endfunction
  
  static function void display_packets_created();
    $display("---------------------------------------");
    $display("\t %0d packets created",no_of_pkts_created);
    $display("---------------------------------------");
  endfunction
endclass

module static_properties;
  packet pkt[3];
  
  initial begin
    foreach(pkt[i]) begin
      pkt[i] = new();
    end
    pkt[0].display_packets_created();
  end
endmodule
      
