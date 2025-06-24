`timescale 1ns / 1ps

module tb_d_flipflop;

    reg clk;
    reg rst;
    reg d;
    wire q;
    d_flipflop uut (
        .clk(clk),
        .rst(rst),
        .d(d),
        .q(q)
    );
    initial begin
        clk = 0;
        forever #5 clk = ~clk; // 10ns clock period
    end
    initial begin
        $dumpfile("d_flipflop.vcd");
        $dumpvars(0, tb_d_flipflop);

        rst = 1; d = 0;
        #10 rst = 0;

        #10 d = 1;
        #10 d = 0;
        #10 d = 1;
        #10 d = 1;
        #10 d = 0;
        #10 $finish;
    end

endmodule
