`timescale 1ns / 1ps

module tb_t_flipflop;

    reg clk;
    reg rst;
    reg t;
    wire q;
    t_flipflop uut (
        .clk(clk),
        .rst(rst),
        .t(t),
        .q(q)
    );
    initial begin
        clk = 0;
        forever #5 clk = ~clk; // 10ns clock period
    end
    initial begin
        $dumpfile("t_flipflop.vcd");
        $dumpvars(0, tb_t_flipflop);
        rst = 1; t = 0;
        #10 rst = 0;

        #10 t = 1;
        #20 t = 0;
        #20 t = 1;
        #20 $finish;
    end

endmodule
