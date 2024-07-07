module tb_half_adder;
  reg A,B;
  wire S,C;
  half_adder a1 (A,B,S,C);  
  initial begin
    $monitor("A=%b\tB=%b\tS=%b\t C=%b\t",A,B,S,C);
    A=1'b0;
    B=1'b0;
    #10
    A=1'b0;
    B=1'b1;
    #10
    A=1'b1;
    B=1'b0;
    #10
    A=1'b1;
    B=1'b1;
  end  
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(1);
  end  
endmodule
