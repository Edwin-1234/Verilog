module not_gate(input x,output y);
  always @(x)
    y=~x;
end module
