module E_O_detector(a,b,c,e,o);
input c,b,a;
  output e,o;
  assign e=~c;
  assign o=c;
  endmodule
