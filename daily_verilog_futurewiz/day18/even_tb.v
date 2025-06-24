`timescale 1ns / 1ps

module tb_even_detector;

    reg [3:0] in;
    wire is_even;
    even_detector uut (
        .in(in),
        .is_even(is_even)
    );

    initial begin
        $dumpfile("even_detector.vcd");
        $dumpvars(0, tb_even_detector);

        for (in = 0; in < 16; in = in + 1)
            #10;

        #20 $finish;
    end

endmodule
