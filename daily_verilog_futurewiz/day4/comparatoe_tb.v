module camparator_2bit_ternary_tb;
  reg [1:0]A;
  reg [1:0]B;
  wire A_eq_B;
  wire A_gt_B;
  wire A_lt_B;
  comparator_2bit_ternary dut(A,B,A_eq_B,A_gt_B,A_lt_B);
  initial begin
   A=2'b00;B=2'b00;
 #5  A=2'b10;B=2'b00;
  #5  A=2'b00;B=2'b01; 
  end
  initial begin
    $monitor("simtime=%0t,A=%b,B=%b,A_eq_B=%b, A_gt_B=%b,A_lt_B=%b",$time,A,B,A_eq_B,A_gt_B,A_lt_B);
  end
  initial begin
    $dumpfile("damp.vcd");
    $dumpvars(0,A,B,A_eq_B,A_gt_B,A_lt_B);
  end
  endmodule
