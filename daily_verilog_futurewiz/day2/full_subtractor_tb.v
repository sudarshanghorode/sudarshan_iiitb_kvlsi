module full_subtractor_tb();
reg a,b,c;
wire di,bo;
  full_subtractor dut(a,b,c,di,bo);
a=0;b=0;c=0;#100;
a=0;b=0;c=1;#100;
a=0;b=1;c=0;#100;
a=0;b=1;c=1;#100;
a=1;b=0;c=0;#100;
a=1;b=0;c=1;#100;
a=1;b=1;c=0;#100;
a=1;b=1;c=1;#100;
end
endmodule
