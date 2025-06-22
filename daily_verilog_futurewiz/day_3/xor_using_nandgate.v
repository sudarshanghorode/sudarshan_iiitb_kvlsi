//gate level modeling
module xornand(a,b,y);
  input a,b;
  output y;
  wire w1,w2,w3;
 
  assign w1=~(a&b);
  assign w2=~(a&w1);
  assign w3=~(b&w2);
  assign y=~(w2&w3);
endmodule

//behavioral modeling
module xornand(
  input a, b,
  output reg y
);
  always @(*) begin
    
    y = ~((~(a & ~(a & b))) & (~(b & ~(a & b))));
  end
endmodule
