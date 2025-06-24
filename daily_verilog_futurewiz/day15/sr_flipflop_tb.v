`timescale 1ns / 1ps
module tb_sr_flipflop;

    reg clk;
    reg rst;
    reg s;
    reg r;
    wire q;
    sr_flipflop uut (
        .clk(clk),
        .rst(rst),
        .s(s),
        .r(r),
        .q(q)
    );
    initial begin
        clk = 0;
        forever #5 clk = ~clk; // 10ns clock period
    end
    initial begin
        $dumpfile("sr_flipflop.vcd");
        $dumpvars(0, tb_sr_flipflop);

        rst = 1; s = 0; r = 0; #10;
        rst = 0;

        s = 1; r = 0; #10; // Set
        s = 0; r = 1; #10; // Reset
        s = 0; r = 0; #10; // Hold
        s = 1; r = 1; #10; // Invalid state
        #10 $finish;
    end

endmodule
