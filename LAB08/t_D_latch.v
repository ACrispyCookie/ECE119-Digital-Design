`include "D_latch.v"
module t_D_latch ();
  reg D, enable;
  wire Q;
  D_latch L1(D, enable, Q);

  initial begin
    $dumpfile("D_latch.vcd");
    $dumpvars(0, L1);
    #2 enable = 0;
    #8 D = 0;
    #10 D = 1;
    #10 enable = 1;
    #10 D = 0;
    #10 D = 1;
    #10 enable = 0;
    #10 D = 0;
    #10 D = 1;
    #10 $finish;
  end
  initial $monitor("D=%b Enable=%b Q=%b", D, enable, Q);
endmodule