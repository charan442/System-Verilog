module array_order;

int array[8] = {2,7,1,9,9,7,0,6};

initial
begin
  $display("\n array[8]={2,7,1,9,9,7,0,6}");

  $display("\n OUTPUT :");

  array.reverse();
  $display("\n // reverse()-Return the reverse order of array element: \n\t%p", array);

  array.sort();
  $display("\n // sort()-Return the array element in the ascending order: \n\t%p", array);

  array.rsort();
  $display("\n // rsort()-Return the array element in the descending order: \n\t%p", array);

  for(int i=0;i<3;i++)
  begin
    array.shuffle();
    $display( "\n // Shuffle()-shuffle the element such that the indicies place element should be different for each shuffle: \n\t%p", array);
  end
  $display("");
end

endmodule 

OUTPUT:::::::::::::::::::::

# KERNEL:  array[8]={2,7,1,9,9,7,0,6}
# KERNEL: 
# KERNEL:  OUTPUT :
# KERNEL: 
# KERNEL:  // reverse()-Return the reverse order of array element: 
# KERNEL: 	'{6, 0, 7, 9, 9, 1, 7, 2}
# KERNEL: 
# KERNEL:  // sort()-Return the array element in the ascending order: 
# KERNEL: 	'{0, 1, 2, 6, 7, 7, 9, 9}
# KERNEL: 
# KERNEL:  // rsort()-Return the array element in the descending order: 
# KERNEL: 	'{9, 9, 7, 7, 6, 2, 1, 0}
# KERNEL: 
# KERNEL:  // Shuffle()-shuffle the element such that the indicies place element should be different for each shuffle: 
# KERNEL: 	'{6, 0, 9, 2, 7, 1, 7, 9}
# KERNEL: 
# KERNEL:  // Shuffle()-shuffle the element such that the indicies place element should be different for each shuffle: 
# KERNEL: 	'{0, 9, 2, 1, 6, 7, 9, 7}
# KERNEL: 
# KERNEL:  // Shuffle()-shuffle the element such that the indicies place element should be different for each shuffle: 
# KERNEL: 	'{7, 9, 9, 2, 1, 7, 6, 0}
# KERNEL: 
# KERNEL: Simulation has finished. There are no more test vectors to simulate.
# VSIM: Simulation has finished.
