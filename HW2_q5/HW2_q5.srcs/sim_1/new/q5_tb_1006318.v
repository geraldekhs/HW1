`timescale 1ns / 1ps

module CCTA_tb();
    reg[3:0] A;
    reg[3:0] B;
    reg[3:0] C;
    reg [1:0]rst;
    reg [1:0]ctrl;
    wire [4:0] q;
    
CCTA u1(A,B,C,rst,ctrl,q);

initial begin
    A <= 4'b1000;
    B <= 4'b0100;
    C <= 4'b0010;
    rst <= 2'b00;
    ctrl <= 2'b00;
    #20
    ctrl <= 2'b01;
    #20
    rst <= 2'b01;
    #20 $finish; 
   
end

endmodule
