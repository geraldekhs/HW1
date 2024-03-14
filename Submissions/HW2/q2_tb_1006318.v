`timescale 1ns / 1ps

module multiplexer_tb();
    reg [1:0] A,B,C,D,SEL;
    wire [1:0] X;
        
//instantiation of module
multiplexer u1(A,B,C,D,SEL,X);

//only triggers once
initial begin
   A <= 2'b00;
   B <= 2'b01;
   C <= 2'b10;
   D <= 2'b11;
   
   #20
   #20 SEL <= 2'b00;
   #20 SEL <= 2'b01;
   #20 SEL <= 2'b10;
   #20 SEL <= 2'b11;
   #20 $finish;  // Finish simulation after 400 time units
   
end

endmodule
