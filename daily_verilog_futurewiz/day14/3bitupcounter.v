
module upcounter3bit (
    input wire clk,
    input wire rst,
    output reg [2:0] count
);

    always @(posedge clk) begin
        if (rst)
            count <= 3'b000;
        else
            count <= count + 1;
    end

endmodule
