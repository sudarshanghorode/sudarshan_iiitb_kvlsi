module sr_flipflop (
    input wire clk,
    input wire rst,   // Asynchronous reset
    input wire s,     // Set
    input wire r,     // Reset
    output reg q
);

    always @(posedge clk or posedge rst) begin
        if (rst)
            q <= 1'b0;
        else begin
            case ({s, r})
                2'b00: q <= q;       // No change
                2'b01: q <= 1'b0;    // Reset
                2'b10: q <= 1'b1;    // Set
                2'b11: q <= 1'bx;    // Invalid state (Set and Reset both 1)
            endcase
        end
    end

endmodule
