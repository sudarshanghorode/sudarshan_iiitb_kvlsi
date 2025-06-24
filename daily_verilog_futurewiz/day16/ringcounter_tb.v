`timescale 1ns / 1ps

module tb_ring_counter;

    reg clk;
    reg rst;
    wire [3:0] q;
    ring_counter uut (
        .clk(clk),
        .rst(rst),
        .q(q)
    );
    initial begin
        clk = 0;
        forever #5 clk = ~clk; // 10ns clock
    end
    initial begin
        $dumpfile("ring_counter.vcd");
        $dumpvars(0, tb_ring_counter);

        rst = 1; #10;
        rst = 0;

        #100 $finish;
    end

endmodule
