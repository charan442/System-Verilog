module queue;
  int j =1;
  int b[$] = {3,4};
  int q[$] = {0,2,5};
  
  initial begin
    
    //insert element 1 before element 2
    q.insert(1,j); //q={0,1,2,5}
    
    //delete element at index 1
    q.delete(1); // q={0,2,5}
    
    //insert element 6 at front of the queue
    q.push_front(6); //q={6,0,2,5}
    
    //remove and assign the last element of the queue of j
    j=q.pop_back; // q={6,0,2} j =5
    
    //insert element 8 at back of the queue 
    q.push_back(8); //q={6,0,2,8}
    
    //remove and assign the first element of the queue of j
    j=q.pop_front; //q={0,2,8}
    
    //display the contents of the queue using foreach loop
    foreach (q[i]) 
      $display(q[i]);
    q.delete();
    
  end
endmodule

    
    
