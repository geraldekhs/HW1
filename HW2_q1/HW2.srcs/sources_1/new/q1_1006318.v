//!DO NOT EDIT MODULE NAME AND PORT NAME!
module decade_counter(
    input clk,
    input rst,
    output reg [3:0] count,
    output reg ten
);

always@(posedge rst)begin
    count <= 1'b0;
    ten <= 1'b0;
end

always@(posedge clk, negedge rst)begin
    ten <= 1'b0;
    if(!rst)begin              //if reset lowx
        // if count = 9, a decade has been reached else increment counter (0-9)
        if(count == 4'b1001)begin   //When counter reaches 9
            ten <= 1'b1;
            count <= 4'b0;          //Clear counter
        end
        else
            count <= count +1'b1;
    end
end

endmodule
