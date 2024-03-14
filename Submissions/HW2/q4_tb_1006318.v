`timescale 1ns / 1ps

module nibbleadd();
    reg [7:0] A,B;
    reg [1:0] ctrl;
    wire [4:0] q;

nibbleadd u1(ctrl);

//sets A value to 3
initial begin
    ctrl <= 2'b00;
    A <= 8'b10010001;
    B <= 8'b10110011;
    #20
    ctrl = 2'b01;
    #20 $finish;  // Finish simulation after 400 time units
   
end

endmodule
