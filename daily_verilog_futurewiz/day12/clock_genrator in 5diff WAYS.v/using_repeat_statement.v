module clk_gen_repeat;
 reg clk;
 initial begin
 clk = 0;
 repeat (10) begin
 #7 clk = ~clk;
 end
 end
 initial begin
 $monitor(“simtime=%0t,count=%b”,$time,count);
 #100 $finish;
 end
endmodule
