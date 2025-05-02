module clk_gen_for;
 reg clk;
 integer i;
 initial begin
 clk = 0;
 for (i = 0; i < 10; i = i + 1) begin
 #15 clk = ~clk;
 end
 end
 initial begin
