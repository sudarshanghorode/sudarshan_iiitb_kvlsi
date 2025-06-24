`timescale 1ns / 1ps
//overlaping sequence
module tb_moore_1010;

    reg clk, rst, x;
    wire y;
    moore_1010 uut (
        .clk(clk),
        .rst(rst),
        .x(x),
        .y(y)
    );
    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end
    initial begin
        $dumpfile("moore_1010.vcd");
        $dumpvars(0, tb_moore_1010);

        rst = 1; x = 0; #10;
        rst = 0;

        x = 1; #10;
        x = 0; #10;
        x = 1; #10;
        x = 0; #10; // Should detect 1010 here → y=1

        x = 1; #10;
        x = 0; #10;
        x = 1; #10;
        x = 0; #10; // Another 1010

        #20 $finish;
    end

endmodule
