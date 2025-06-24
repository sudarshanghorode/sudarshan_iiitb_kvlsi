even number
module even_detector (
    input  wire [3:0] in,
    output wire is_even
);

    assign is_even = (in % 2 == 0) ? 1'b1 : 1'b0;

endmodule
