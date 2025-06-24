module up_down_counter_3bit (
    input wire clk,
    input wire rst,
    input wire up_down, 
    output reg [2:0] count
);

    always @(posedge clk) begin
        if (rst)
            count <= 3'b000;
        else if (up_down)
            count <= count + 1;
        else
            count <= count - 1;
    end

endmodule
