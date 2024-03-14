//!DO NOT EDIT MODULE NAME AND PORT NAME!
module multiplexer(
  input [1:0] A,B,C,D,SEL,
  output reg [1:0] X
);

// Combine all inputs into a single sensitivity list for efficiency
always @(A or B or C or D or SEL)
  begin
    // Use a logic expression to drive the output based on SEL
    case (SEL)
      2'b00: X = A;
      2'b01: X = B;
      2'b10: X = C;
      2'b11: X = D;
      default: X = 2'bX; // Unknown value for default case
    endcase
  end

endmodule
