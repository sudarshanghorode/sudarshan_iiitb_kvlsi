module xornand_tb;
  reg a,b;
  wire y;
  xornand dut(a,b,y);
  initial begin
    a=0;b=0;
  #5  a=0;b=1;
  #5  a=1;b=0;
  #5  a=1;b=1;
  end
  initial begin
    $monitor("$simtime=%0t,a=%b,b=%b,y=%b",$time,a,b,y);
  end
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(0,a,b,y);
  end
   
endmodule  
