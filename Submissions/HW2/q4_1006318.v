//!DO NOT MODIFY MODULE NAME AND PORT NAME!
module nibbleadd(
    input wire [7:0]A,
    input wire [7:0]B,
    input wire [1:0]ctrl,
    output reg [4:0]
);

always @(ctrl or A or B) begin;
    case(ctrl)
      2'b00: begin
        q <= A[3:0]+B[3:0];
      end
      2'b01: begin
        q <= A[7:4]+B[7:4];
      end
    endcase
end

//YOUR CODE HERE
endmodule