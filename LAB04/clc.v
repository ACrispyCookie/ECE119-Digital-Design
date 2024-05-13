module clc(x, y, z, out);
  input x, y, z;
  output out;
  
  assign out = !x&&!z||!x&&!y;
endmodule

module t_clc();
  reg x, y, z;
  wire out;
  clc inst(x, y, z, out);
  
  initial begin
	$dumpfile("clc.vcd");
	$dumpvars(0, t_clc);
		x = 1'b0; y = 1'b0; z = 1'b0;
	#10 x = 1'b0; y = 1'b0; z = 1'b1;
	#10 x = 1'b0; y = 1'b1; z = 1'b0;
	#10 x = 1'b0; y = 1'b1; z = 1'b1;
	#10 x = 1'b1; y = 1'b0; z = 1'b0;
	#10 x = 1'b1; y = 1'b0; z = 1'b1;
	#10 x = 1'b1; y = 1'b1; z = 1'b0;
	#10 x = 1'b1; y = 1'b1; z = 1'b1;
  end
  
  initial $monitor("Input: %b %b %b Output: %b", x, y, z, out);
endmodule