module typedef_enum;
  typedef enum {MONDAY, TUESDAY, WEDNESDAY, THURSDAY, FRIDAY, SATURDAY, SUNDAY}week_e;
  week_e day;
  
  initial begin
    $display("\n//days = {\n MONDAY,\n TUESDAY,\n WEDNESDSAY,\n THURSDAY,\n FRIDAY,\n SAYTURDAY,\n SUNDAY\n}");
    day = day.first();
    $display("\nfirst day name = %0s and its value is = %0d",day,day);
    
    day = day.last();
    $display("\nlast day name = %0s and its value is = %0d",day,day);
    
    day = WEDNESDAY;
    
    day = day.next();
    $display("\n next day name after wednesday = %0s and its value is = %0d",day,day);
    
    day = WEDNESDAY;
    day = day.prev();
    $display("\n previous day name before wednesday = %0s and its value is = %0d",day,day);
    
    $display("\n current day name = %0s and its value is = %0d",day.name(),day);
    
    $display("\n total number of days in week type is = %0d\n",day,num());
  end
endmodule
