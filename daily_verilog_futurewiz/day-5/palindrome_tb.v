// Code your testbench here
// or browse Examples
module palindrome_3bit_tb;
  reg [2:0]i;
  wire y;
  palindrome_3bit dut(i,y);
  initial begin
    i=3'b000;
  #5 i=3'b001;
  #5 i=3'b010;
  #5 i=3'b011;
  #5 i=3'b100;
  #5 i=3'b101;
 #5 i=3'b110;
 #5 i=3'b111;
  end
  initial begin 
    $monitor("simtime=%0t,i=%b,y=%b,", $time,i,y);
  end
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(0,i,y);
  end
  endmodule

