`timescale 1ns / 1ps

module tb_special_seq;

    reg clk, rst;
    wire [2:0] out;
    special_seq uut (
        .clk(clk),
        .rst(rst),
        .out(out)
    );
    initial begin
        clk = 0;
        forever #5 clk = ~clk; // 10ns period
    end
    initial begin
        $dumpfile("special_seq.vcd");
        $dumpvars(0, tb_special_seq);

        rst = 1; #10;
        rst = 0;

        #150 $finish;
    end

endmodule
