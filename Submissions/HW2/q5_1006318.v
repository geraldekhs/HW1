//!DO NOT MODIFY MODULE NAME AND PORT NAME!
module CCTA(
    input wire[3:0] A,
    input wire[3:0] B,
    input wire[3:0] C,
    input wire [1:0]rst,
    input wire [1:0]ctrl,
    output reg [4:0] q
);



always@(*)
    begin 
        if(rst)begin
            q = 0;
        end 
        else begin
            case(ctrl)
                2'b00: q = A+B;
                2'b01: q = A-C;
            endcase
        end
    end
endmodule