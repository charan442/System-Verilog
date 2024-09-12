module dynamic_array;
  int my_array[];
  initial begin
    my_array = new[5];
    my_array[0] = 20;
    my_array[1] = 30;
    my_array[2] = 40;
    my_array[3] = 50;
    my_array[4] = 60;
    
    $display("Array size : %d",my_array.size());
    $display("Array elements:");
    foreach(my_array[i]) begin
      $display("%d",my_array[i]);
    end
    my_array.delete();
    $display("Array size after deletion: %d", my_array.size());
  end
endmodule
