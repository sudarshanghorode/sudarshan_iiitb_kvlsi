`timescale 1ns / 1ps

module tb_up_down_counter_3bit;

    reg clk;
    reg rst;
    reg up_down;
    wire [2:0] count;
    up_down_counter_3bit uut (
        .clk(clk),
        .rst(rst),
        .up_down(up_down),
        .count(count)
    );
    initial begin
        clk = 0;
        forever #5 clk = ~clk; // 10ns clock
    end
    initial begin
        $dumpfile("up_down_counter_3bit.vcd");
        $dumpvars(0, tb_up_down_counter_3bit);

        rst = 1; up_down = 1;   
        #10 rst = 0;
        #50 up_down = 1; //count up
        #50 up_down = 0;  // Count down
        #50 $finish;
    end

endmodule
