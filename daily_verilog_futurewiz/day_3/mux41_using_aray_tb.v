module mux41_tb;
  reg[3:0]i;
  reg [1:0]s;
  wire y;
  mux41 dut(i,s,y);
  initial begin 
    $monitor("simtime=%0t,i=%b,s=%b,y=%b",$time,i,s,y);
  end
  initial begin
    i[3]=0; i[2]=0; i[1]=0; i[0]=0; s[1]=0; s[0]=0;
    #5 i[3]=0; i[2]=0; i[1]=0; i[0]=0; s[1]=0; s[0]=1; 
    #5 i[3]=0; i[2]=0; i[1]=0; i[0]=0; s[1]=1; s[0]=1; 
    #5 i[3]=0; i[2]=0; i[1]=0; i[0]=1; s[1]=0; s[0]=1; 
    #5 i[3]=0; i[2]=0; i[1]=1; i[0]=0; s[1]=0; s[0]=1; 
    #5 i[3]=0; i[2]=1; i[1]=0; i[0]=0; s[1]=0; s[0]=1; 
  end 
  initial begin 
    $dumpfile("dump.vcd");
    $dumpvars(0,i,s,y);
  end
endmodule
