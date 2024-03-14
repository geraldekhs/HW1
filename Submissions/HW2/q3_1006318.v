//!DO NOT MODIFY MODULE NAME AND PORT NAME!
module demultiplexer(
    input wire [1:0]A,
    input wire [1:0]SEL,
    output reg[1:0]W,
    output reg[1:0]X,
    output reg[1:0]Y,
    output reg[1:0]Z
    );
    
  always @(SEL or A) begin;
    case(SEL)
      2'b00: begin
        W = A;
        X = 2'b00;
        Y = 2'b00;
        Z = 2'b00;
      end
      2'b01: begin
        W = 2'b00;
        X = A;
        Y = 2'b00;
        Z = 2'b00;
      end
      2'b10: begin
        W = 2'b00;
        X = 2'b00;
        Y = A;
        Z = 2'b00;
      end
      2'b11: begin
        W = 2'b00;
        X = 2'b00;
        Y = 2'b00;
        Z = A;
      end
    endcase
  end    
    

//function selector (input [1:0] a,b,c,d,e,f);
//    if (a == b) begin
//        a = c;
//        d = 2'b00;
//        e = 2'b00;
//        f = 2'b00;
//    end
//endfunction  
    
//selector in1(W,2'b00,A,X,Y,Z);
//selector in2(X,2'b01,A,W,Y,Z);
//selector in3(Y,2'b10,A,X,W,Z);
//selector in4(Z,2'b11,A,X,Y,W);

endmodule