//F(A,B,C,D)=SUM(0,1,4,5,10,11,14,15)
module comb(
  input a,b,c,d,
  output y);
  
  assign y=((~a)&(~c))|(a&c);
  
endmodule
