squence generator of :(0,1,0,2,0,3,0,4,0,5,0,6.....)
module special_seq (
    input wire clk,
    input wire rst,
    output reg [2:0] out
);

    reg toggle;         // toggles 0/1 to decide whether to output 0 or next value
    reg [2:0] counter;  // stores current value to output (1 to 6)

    always @(posedge clk or posedge rst) begin
        if (rst) begin
            toggle <= 0;
            counter <= 3'd1;
            out <= 3'd0;
        end else begin
            if (toggle == 0)
                out <= 3'd0;
            else begin
                out <= counter;
                if (counter < 6)
                    counter <= counter + 1;
            end
            toggle <= ~toggle; // flip every clock
        end
    end

endmodule
