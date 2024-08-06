module associative_array ();

  int abc[*]; 
  string pqr[string];

  initial begin
    $display("");
    $display("// associative array example");
    $display("");
    abc = '{ 1 : 20 , 25 : 22 , 38 : 66};
    pqr = '{ "fruits" : "mango" , "vegetables" : "cucumber" , "season" : "monsoon"};
    $display("// this int type associative arrays contains int type index");
    $display("abc = %p",abc);
    $display("");
    $display("// this string type associative arrays contains string type index");
    $display("pqr = %p",pqr);
    $display("");
  end

endmodule 
