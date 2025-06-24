`timescale 1ns / 1ps

module tb_up_counter_3bit;

    reg clk;
    reg rst;
    wire [2:0] count;
    up_counter_3bit uut (
        .clk(clk),
        .rst(rst),
        .count(count)
    );
    initial begin
        clk = 0;
        forever #5 clk = ~clk; // 10ns clock period
    end
    initial begin
        $dumpfile("up_counter_3bit.vcd");
        $dumpvars(0, tb_up_counter_3bit);
        rst = 1;
        #10 rst = 0;

        #100 $finish; 
    end

endmodule
