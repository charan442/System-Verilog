module set_value_enum;
  enum {TAMIL=1, ENGLISH=3, MATHS, SCIENCE=7, SOCIAL}subjects;
  
  initial begin
    $display("\n//subjects and given its value = {\n TAMIL=1,\n ENGLISH=3,\n MATHS,\n SCIENCE=7,\n SOCIAL\n}");
    
    subjects=subjects.first;
    
    $display("");
    
    for(int i=0;i<5;i++) begin
      $display("Subjects name = %0s and its default name = %d",subjects.first,subjects);
      subjects=subjects.next;
    end
    
    $display("");
  end
endmodule
