module FA(
  input A,B,Cin,
  output reg S,Cout);
  always @(A,B,Cin)
    begin
      S=A^B^Cin;
      Cout=(A&B)|(Cin&A)|(Cin&B);
    end
endmodule
