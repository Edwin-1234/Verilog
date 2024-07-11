module xor_gate(input a,b,output y);
  always @(a or b)
    y=a^b;
  end module
