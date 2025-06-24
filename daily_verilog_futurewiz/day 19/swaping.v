//using blocking assignment
module swap_blocking (
    input  wire [3:0] a_in,
    input  wire [3:0] b_in,
    output reg  [3:0] a_out,
    output reg  [3:0] b_out
);

    reg [3:0] temp;

    always @(*) begin
        temp  = a_in;
        a_out = b_in;
        b_out = temp;
    end

endmodule


