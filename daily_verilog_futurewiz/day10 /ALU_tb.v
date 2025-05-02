module ALU_tb;
 reg [2:0] a, b, s;
 wire [5:0] y;
 ALU dut(a,b,s,y);
initial begin
 $monitor("simtime=%0t,a=%b,b=%b,s=%b,y=%b",$time,a,b,s,y);
 end

initial begin
 a = 3'b010; b = 3'b001; s = 3'b000; // a + b = 3
 #10 s=3'b001; // a - b = 1
 #10 s=3'b010; // a * b = 2
 #10 s=3'b011; // a / b = 2
 #10 s=3'b100; // a & b = 000
 #10 s=3'b101; // a | b = 011
 #10 s=3'b110; // a ^ b = 011
 #10 s=3'b111; // ~(a ^ b)
 end
 initial begin
 $dumpfile("dump.vcd");
 $dumpvars(0,a,b,s,y);
 end
endmodule
