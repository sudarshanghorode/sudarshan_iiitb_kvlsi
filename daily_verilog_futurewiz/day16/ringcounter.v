module ring_counter (
    input wire clk,
    input wire rst,
    output reg [3:0] q
);

    always @(posedge clk or posedge rst) begin
        if (rst)
            q <= 4'b0001;  // Initial state: only LSB is 1
        else
            q <= {q[2:0], q[3]}; // Rotate left
    end

endmodule
