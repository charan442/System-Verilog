class packet;
  //class properties
  byte packet_id;
  
  //static property to keep track of number of pkt's created
  static byte no_of_pkts_created;
  //constructor
  function new();
    no_of_pkts_created++;
    packet_id = no_of_pkts_created;
  endfunction
  
  //method to display class properly
  function void display();
  $display("------------------------------");
  $display("\t packet_id = %0d", packet_id);
  $display("------------------------------");
  endfunction
endclass

module static_properties;
  packet pkt[5];
  
  initial begin
    foreach(pkt[i]) begin
      pkt[i] = new();
      pkt[i].display();
    end
  end
endmodule
