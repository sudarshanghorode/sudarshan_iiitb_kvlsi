//gatelevel modeling 
//mux using trisatate
module mux21(i0,i1,s,y);
  input(i0,i1,s);
  output(y);
  bufif0 b1(y,i0,s);
  bufif1 b2(y,i1,s);
endmodule
