module mod100_counter_tb;
 reg clk;
 reg rst;
 wire [6:0] count;
 mod100_counter dut(clk,rst,count);
 always begin
 #5 clk = ~clk;
 end
 initial begin
 clk = 0;
 rst = 0;
 rst = 1; #10;
 rst = 0; #10;
 #1000 $finish;
 end
 initial begin
 $monitor("simtime=%0t,count=%d",$time,count);
 end
 initial begin
 $dumpfile("dump.vcd");
 $dumpvars(0,clk,rst,count);
 end
endmodul
