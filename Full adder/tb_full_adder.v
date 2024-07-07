module tb_full_adder;
  reg A, B, Cin;
  wire S, Cout;
  
  FA a1 (A, B, Cin, S, Cout);
  
  initial begin  	                  
    $monitor("A=%b\tB=%b\tCin=%b\tS=%b\tCout=%b", A, B, Cin, S, Cout);
    A = 1'b0; B = 1'b0; Cin = 1'b0;
    #10
    A = 1'b0; B = 1'b0; Cin = 1'b1;
    #10
    A = 1'b0; B = 1'b1; Cin = 1'b0;
    #10    
    A = 1'b0; B = 1'b1; Cin = 1'b1;
    #10   
    A = 1'b1; B = 1'b0; Cin = 1'b0;
    #10   
    A = 1'b1; B = 1'b0; Cin = 1'b1;
    #10    
    A = 1'b1; B = 1'b1; Cin = 1'b0;
    #10    
    A = 1'b1; B = 1'b1; Cin = 1'b1;
  end
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(1);
  end
endmodule
