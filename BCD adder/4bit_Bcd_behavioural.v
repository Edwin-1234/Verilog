module BCD_Adder (
    input [3:0] A,    
    input [3:0] B,    
    input Cin,        
    output [3:0] Sum, 
    output Cout       
);
    reg [4:0] temp_sum;
    reg [3:0] bcd_sum;
    reg carry;

  always @(A or B or Cin) 
  begin
        temp_sum = A + B + Cin; 

        if (temp_sum > 9) begin
            bcd_sum = temp_sum + 6; 
            carry = 1;              
        end 
        else begin
            bcd_sum = temp_sum;     
            carry = 0;              
        end
    end
    assign Sum = bcd_sum;
    assign Cout = carry;
endmodule
