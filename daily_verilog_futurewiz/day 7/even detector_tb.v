module E_O_detector_tb;
  reg a,b,c;
  wire e,o;
  E_O_detector dut(a,b,c,e,o);
  // intializing the stimulus
  initial begin
    a=1'b0; b=1'b0; c=1'b0;
  #5 a=1'b0; b=1'b0; c=1'b1;
  #5 a=1'b0; b=1'b1; c=1'b0;  
  #5 a=1'b0; b=1'b1; c=1'b1;
   #5 a=1'b1; b=1'b0; c=1'b0;
   #5 a=1'b1; b=1'b0; c=1'b1;
   #5 a=1'b1; b=1'b1; c=1'b0;
   #5 a=1'b1; b=1'b1; c=1'b1;
  end
 initial begin
   $monitor("simtime=%0t,a=%b,b=%b,c=%b,e=%b,o=%b",$time,a,b,c,e,o);
 end
  
endmodule
