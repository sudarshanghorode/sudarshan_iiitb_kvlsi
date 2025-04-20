module gen_adder_testbench;
reg [dut.N-1:0]a,b;
wire [dut.N:0]sum;
defparam dut.N = 6; 
gen_adder dut(a,b,sum);

initial begin 
     for (integer i = 0; i<2**(2*dut.N);i=i+1) begin
     {a,b} = i;
     #5;
     end
     end
endmodule
