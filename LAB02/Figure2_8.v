module Figure2_8(A, B, C, D);
	output D;
	input A, B, C;
	wire w1, w2;
	
	and G1(D, w1, w2);
	and G2(w2, B, C);
	or G3(w1, A, B);
endmodule