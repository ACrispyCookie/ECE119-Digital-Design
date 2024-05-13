module Which_gate_is (a, b, out);
  output out;
  input a, b;
  wire w1, w2, w3;
  
  nand G1(w1, a, b);
  nand G2(w3, w1, b);
  nand G3(w2, a, w1);
  nand G4(out, w2, w3);
endmodule

module t_Which_gate_is;
  reg a, b;
  wire out;
  Which_gate_is inst(a, b, out);
  
  initial begin
	$dumpfile("Which_gate_is.vcd");
	$dumpvars(0, t_Which_gate_is);
		a = 1'b0; b = 1'b0;
	#10 a = 1'b0; b = 1'b1;
	#10 a = 1'b1; b = 1'b0;
	#10 a = 1'b1; b = 1'b1;
  end
  
  initial $monitor("Input: %b %b Output: %b", a, b, out);
endmodule