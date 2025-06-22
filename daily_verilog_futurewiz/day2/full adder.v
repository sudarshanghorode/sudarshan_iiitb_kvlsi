// gatelevel modeling
module full_adder(input a,b,cin,output s,c);
wire w1,w2,w3;
xor x1(w1,a,b);
xor x2(s,w1,cin);
and a1(w2,w1,cin);
and a2(w3,a,b);
or o1(c,w2,w3);

endmodule

//daflow modeling
module full_adder(input a,b,cin,output s,c);
wire w1,w2,w3;
  assign s=a^b^cin;
  assign c=a&b;
endmodule

//behavioral modeling
module full_adder(input a,b,cin,output reg s,c);
wire w1,w2,w3;
  always@(a,b,cin)
  {cin,s}=a+b+cin;

  end
