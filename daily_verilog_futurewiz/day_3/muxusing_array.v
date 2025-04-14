module mux41( 
  input [3:0]i,
  input [1:0]s,
  output y
);
  
  assign y1=(i[0]&~s[0]&~s[1]);
  assign y2=(i[1]&~s[0]&s[1]);
  assign y3=(i[2]&s[0]&~s[1]);
    assign y4=(i[3]&s[0]&s[1]);
  assign y=y1|y2|y3|y4;
endmodule
