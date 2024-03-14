`timescale 1ns / 1ps

module demultiplexer_tb();
    reg [1:0] A,SEL;
    wire [1:0] W,X,Y,Z;
        
//instantiation of module
demultiplexer u1(A,SEL,W,X,Y,Z);

//initialises all values to 2
//assign W = 2'b10;
//assign X = 2'b10;
//assign Y = 2'b10;
//assign Z = 2'b10;

//sets A value to 3
initial begin
   A <= 2'b11;
   #20 SEL <= 2'b00;
   #20 SEL <= 2'b01;
   #20 SEL <= 2'b10;
   #20 SEL <= 2'b11;
   #20 $finish;  // Finish simulation after 400 time units
   
end

endmodule
