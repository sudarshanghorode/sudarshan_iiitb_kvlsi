`timescale 1ns / 1ps
//overlaping sequence detection
module tb_mealy_101;
  reg clk, rst, x;
    wire y;
    mealy_101 uut (
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
        $dumpfile("mealy_101.vcd");
        $dumpvars(0, tb_mealy_101);

        rst = 1; x = 0;
        #10 rst = 0;

        x = 1; #10;
        x = 0; #10;
        x = 1; #10;  
        x = 0; #10;
        x = 1; #10;  
        x = 1; #10;
        x = 0; #10;
        x = 1; #10;  

        #20 $finish;
    end

endmodule
