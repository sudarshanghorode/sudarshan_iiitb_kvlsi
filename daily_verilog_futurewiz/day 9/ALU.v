module ALU (a,b,s,y);
 input [2:0] a;
 input [2:0] b;
 input [2:0] s;
 output [5:0] y;
 wire [5:0] w[7:0]; // Array of 8 wires, each 6 bits wide
 assign w[0] = a + b;
 assign w[1] = a - b;
 assign w[2] = a * b;
 assign w[3] = a / b;
 assign w[4] = a & b;
 assign w[5] = a | b;
 assign w[6] = a ^ b;
 assign w[7] = ~(a ^ b);
 assign y = s[2] ?
 (s[1] ? (s[0] ? w[7] : w[6]) : (s[0] ? w[5] : w[4])) :
 (s[1] ? (s[0] ? w[3] : w[2]) : (s[0] ? w[1] : w[0]));
Endmodule
