module mod100_counter(clk,rst,count);
 input clk;
 input rst;
 output reg [6:0] count;
 always @(posedge clk or posedge rst)
 begin
 if (rst)
 count <= 7'b0000000;
 else if (count == 99)
 count <= 7'b0000000;
 else
 count <= count + 1;
 end
endmodule
