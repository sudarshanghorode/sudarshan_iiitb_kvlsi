module prime_logic (
    input  wire [3:0] in,         // input number (0–15)
    output reg   is_prime   // output flag
);

    integer i;
    reg is_composite;

    always @(*) begin
        if (in < 2)
            is_prime = 0;
        else begin
            is_composite = 0;
            for (i = 2; i < in; i = i + 1) begin
                if (in % i == 0)
                    is_composite = 1;
            end
            is_prime = ~is_composite;
        end
    end

endmodule
