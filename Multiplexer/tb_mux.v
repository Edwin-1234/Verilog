module tb_mult;
  reg i0,i1,i2,i3,s0,s1;
  wire y;
  
  mult m (.i0(i0),.i1(i1),.i2(i2),.i3(i3),.s0(s0),.s1(s1),.y(y));
  
  initial begin
    s0=1'b0;s1=1'b0;i0=1'b0;
    #10
    s0=1'b0;s1=1'b0;i0=1'b1;
    #10
    s1=1'b0;s0=1'b1;i1=1'b0;i0=1'dx;
    #10
    s1=1'b0;s0=1'b1;i1=1'b1;
    #10
    s1=1'b1;s0=1'b0;i2=1'b0;i1=1'dx;
    #10
    s1=1'b1;s0=1'b0;i2=1'b1;
    #10
    s1=1'b1;s0=1'b1;i3=1'b0;i2=1'dx;
    #10
    s1=1'b1;s0=1'b1;i3=1'b1;
  end
  initial begin 
  $monitor("%t s1=%b so=%b i0=%b i1=%b i2=%b i3=%b y=%b\t",$time,s1,s0,i0,i1,i2,i3,y);
  end
endmodule
