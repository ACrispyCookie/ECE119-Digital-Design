primitive POS_3_3_UDP (D, A, B, C);
	output D;
	input A, B, C;
	
	table
		0 0 0 : 0;
		0 0 1 : 1;
		0 1 0 : 1;
		0 1 1 : 1;
		1 0 0 : 0;
		1 0 1 : 1;
		1 1 0 : 1;
		1 1 1 : 1;
	endtable
	
endprimitive