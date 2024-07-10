module tb_BCD_Adder;
    reg [3:0] A;  
  reg [3:0] B;    
    reg Cin;        
    wire [3:0] Sum; 
    wire Cout;      
    BCD_Adder uut (
        .A(A),
        .B(B),
        .Cin(Cin),
        .Sum(Sum),
        .Cout(Cout)
    );
    initial begin
        $display("Time  | A    B    Cin  | Sum  Cout");
        $display("-----------------------------------");
        $monitor("%0t | %b  %b   %b  | %b   %b", $time, A, B, Cin, Sum, Cout);
        A = 4'b0011; B = 4'b0100; Cin = 1'b0;
        #10;  
        A = 4'b1100; B = 4'b0011; Cin = 1'b0;
        #10;
        A = 4'b0111; B = 4'b0110; Cin = 1'b1;
        #10;
        A = 4'b1001; B = 4'b0111; Cin = 1'b1;
        #10;
        A = 4'b1101; B = 4'b0111; Cin = 1'b1;
        #10;
   		A = 4'b1111; B = 4'b0110; Cin = 1'b1;
    end
endmodule
