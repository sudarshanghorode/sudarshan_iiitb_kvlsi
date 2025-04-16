module palindrome_3bit(input [2:0]i,output y);
  assign y=((i[2]===i[0])?1'b1:1'b0);
endmodule
