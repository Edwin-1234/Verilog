module tb_demux;
  reg i, s0, s1;
  wire y0, y1, y2, y3;
  
  demux d (.i(i), .s0(s0), .s1(s1), .y0(y0), .y1(y1), .y2(y2), .y3(y3));  
  initial begin    	
    $monitor("S1=%b\tS0=%b\tI=%b\tY0=%b\tY1=%b\tY2=%b\tY3=%b", s1, s0, i, y0, y1, y2, y3);
    s1 = 0; s0 = 0; i = 1;
    #10
    s1 = 0; s0 = 1; i = 1;
    #10
    s1 = 1; s0 = 0; i = 1;
    #10
    s1 = 1; s0 = 1; i = 1;
  end  
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(1);
  end
endmodule
