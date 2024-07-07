module FA(A,B,CIN,S,COUT);
  input A,B,CIN;
  output S,COUT;
  wire X,Y,Z;
  
  half_adder ha1 (.A(A),.B(B),.S(X),.C(Y));
  half_adder ha2 (.A(CIN),.B(X),.S(S),.C(Z));
  
  or(COUT,Y,Z);
endmodule

module half_adder(A,B,S,C);
  input A,B;
  output S,C;
  xor(S,A,B);
  and(C,A,B);
endmodule
