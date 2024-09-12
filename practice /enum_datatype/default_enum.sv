module default_enum;
  enum {INDIA,LANKA,TURKEY,JAPAN,CHINA}country;
  
  initial begin
    $display("\n//county ={\n INDIA,\n LANKA,\n TURKEY,\n JAPAN,\n CHINA\n}");
    
    country=country.first;
    
    $display("");
    
    for(int i=0; i<5; i++) begin
      $display("Country name = %0s and its default value is = %0d",country.first,country);
      country=country.next;
    end
    $display("");
  end
endmodule
