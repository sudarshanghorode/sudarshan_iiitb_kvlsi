module gen_adder #(parameter N = 4) (a,b,sum);
 input  [N-1:0]a;     
    input  [N-1:0]b;  
    output [N:0]sum;           
    assign sum = a + b;
endmodule
