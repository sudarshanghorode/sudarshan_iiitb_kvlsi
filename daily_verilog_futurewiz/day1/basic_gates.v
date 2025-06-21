//by gate level modeling
module basic_gates(A,B,C,P,Q,R,S,T,U);
input A,B,C;
output P,Q,R,S,T,U;
and a1(P,A,B,C);
nand b1(Q,A,B,C);
or o1(R,A,B,C);
nor n1(S,A,B,C);
xor n2(T,A,B,C);
xnor n3(U,A,B,C);
endmodule

//by data flow modeling style
module basic_gates(A,B,C,P,Q,R,S,T,U);
input A,B,C;
output P,Q,R,S,T,U;
  assign P=A&B&C;
  assign Q=~(A&B&C);
  assign R=A|B|C;
  assign S=~(A|B|C);
  assign T=A^B^C;
  assign U=~(A^B^C);
  endmodule
