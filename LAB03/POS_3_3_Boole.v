module POS_3_3_Boole (D, A, B, C);
	output D;
	input A, B, C;
	
	assign D = (A || B || C) && (!A || B || C)
endmodule