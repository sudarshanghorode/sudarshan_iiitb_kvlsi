`timescale 1ns / 1ps

module tb_jk_flipflop;

    reg clk;
    reg rst;
    reg j;
    reg k;
    wire q;
    jk_flipflop uut (
        .clk(clk),
        .rst(rst),
        .j(j),
        .k(k),
        .q(q)
    );
    initial begin
        clk = 0;
        forever #5 clk = ~clk; // 10ns clock period
    end
    initial begin
        $dumpfile("jk_flipflop.vcd");
        $dumpvars(0, tb_jk_flipflop);

        rst = 1; j = 0; k = 0; #10;
        rst = 0;
        j = 0; k = 0; #10; 
        j = 0; k = 1; #10; 
        j = 1; k = 0; #10; 
        j = 1; k = 1; #10; 
        j = 0; k = 0; #10; 
        #20 $finish;
    end

endmodule
