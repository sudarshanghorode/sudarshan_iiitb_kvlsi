`timescale 1ns / 1ps

module tb_prime_logic;

    reg [3:0] in;
    wire is_prime;
    prime_logic uut (
        .in(in),
        .is_prime(is_prime)
    );

    initial begin
        $dumpfile("prime_logic.vcd");
        $dumpvars(0, tb_prime_logic);

        for (in = 0; in < 16; in = in + 1)
            #10;

        #20 $finish;
    end

endmodule
