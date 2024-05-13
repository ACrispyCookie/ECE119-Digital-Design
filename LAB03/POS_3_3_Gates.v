module POS_3_3_Gates (D, A, B, C);
	output D;
	input A, B, C;
	wire w1, w2, w3;
	
	not G1(w1, A);
	or G2(w2, w1, B, C);
	or G3(w3, A, B, C);
	and G4(D, w2, w3);
endmodule

module t_POS_3_3_Gates;
reg A, B, C;
wire D;
POS_3_3_Gates gate(D, A, B, C);
initial begin
		A = 0; B = 0; C = 0;
	#10 A = 0; B = 0; C = 1;
	#10 A = 0; B = 1; C = 0;
	#10 A = 0; B = 1; C = 1;
	#10 A = 1; B = 0; C = 0;
	#10 A = 1; B = 0; C = 1;
	#10 A = 1; B = 1; C = 0;
	#10 A = 1; B = 1; C = 1;
end
initial $monitor("A=%b, B=%b, C=%b, D=%b", A, B, C, D);
endmodule