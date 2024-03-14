`timescale 1ns / 1ps

module decade_counter_tb();
    reg clk;
    reg rst;
    wire [3:0]count;
    wire ten;
    
//instantiation of module
decade_counter u1(clk,rst,count,ten);

//triggers throughout whole simulation
always begin
   #10 clk = ~clk;  // Generate a clock with a period of 20 time units
end

//only triggers once
initial begin
   clk = 1'b0;  // Initialize clock to low
   rst = 1'b1;  // Assert reset
   #30 rst = 1'b0;  // Deassert reset after 10 time units
   #400 $finish;  // Finish simulation after 400 time units
end

endmodule
