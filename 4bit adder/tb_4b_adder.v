module tb_adder4bit;
    reg [3:0] A;
    reg [3:0] B;
    reg Cin;
    wire [3:0] Sum;
    wire Cout;

    adder4bit uut (.A(A), .B(B),.Cin(Cin),.Sum(Sum),.Cout(Cout)
    );

    initial begin
       
        $monitor("Time: %0d A: %b B: %b Cin: %b => Sum: %b Cout: %b", $time, A, B, Cin, Sum, Cout);
      
	      A = 4'b0011; B = 4'b0100; Cin = 1'b0;
        #10 A = 4'b0001; B = 4'b0010; Cin = 1'b0; 
        #10 A = 4'b0110; B = 4'b0011; Cin = 1'b1; 
        #10 A = 4'b1111; B = 4'b0001; Cin = 1'b0; 
        #10 A = 4'b1001; B = 4'b1001; Cin = 1'b1; 
        #10 A = 4'b0101; B = 4'b0101; Cin = 1'b1; 
        #10 $finish; 
    end
endmodule
