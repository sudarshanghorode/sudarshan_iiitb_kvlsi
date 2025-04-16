module FA4_tb;
  reg [3:0]a;
  reg [3:0]b;
  wire [3:0]s;
  wire cout;
  reg cin;
  FA4 dut(a,b,cin,s,cout);
  initial begin 
    a=1'b0; b=1'b0; cin=1'b0;
 #5 a=1'b0; b=1'b0; cin=1'b1;
 #5 a=1'b0; b=1'b1; cin=1'b0; 
 #5 a=1'b0; b=1'b1; cin=1'b1;  
 #5 a=1'b1; b=1'b0; cin=1'b0;
 #5 a=1'b1; b=1'b0; cin=1'b1;
 #5 a=1'b1; b=1'b1; cin=1'b0;
 #5 a=1'b1; b=1'b1; cin=1'b1;   
  end
  initial begin 
    $monitor("simtime=%0t,a=%b,b=%b,cin=%b,s=%b,cout=%b",$time,a,b,cin,s,cout);
  end
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(0,a,b,cin,s,cout);
  end
  endmodule
