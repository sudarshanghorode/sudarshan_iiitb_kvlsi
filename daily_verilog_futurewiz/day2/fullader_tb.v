module full_adder_tb();
reg a,b,cin;
wire s,c;
  full_adder dut(a,b,cin,s,c);
      initial begin
      a=0;b=0;cin=0;
      #10;
      a=0;b=0;cin=1;
      #10;
      a=0;b=1;cin=0;
      #10;
      a=0;b=1;cin=1;
      #10;
      a=1;b=0;cin=0;
      #10;
      a=1;b=0;cin=1;
      #10;
      a=1;b=1;cin=0;
       #10;
      a=1;b=1;cin=1;
      #10;
      end
endmodule
