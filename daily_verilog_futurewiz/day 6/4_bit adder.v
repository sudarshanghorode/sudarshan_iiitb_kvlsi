//structural modeling style
Lower module
module FA(a,b,cin,s,cout);
  input [3:0]a;
  input [3:0]b;
  output [3:0]s;
  output cout;
  input cin;
]  
  wire [2:0]c;
  assign s=a^b^c;
  assign cout=a&b|b&c|a&c;
endmodule

Higher module
`include "FA.v"
module FA4(a,b,cin,s,cout);
  input [3:0]a;
  input [3:0]b;
  output [3:0]s;
  output cout;
  input cin;
  wire [2:0]c;
  FA f1(a[0],b[0],cin,s[0],c[0]);
  FA f2(a[1],b[1],c[0],s[1],c[1]);
  FA f3(a[2],b[2],c[1],s[2],c[2]);
  FA f4(a[3],b[3],c[2],s[3],cout);
Endmodule
