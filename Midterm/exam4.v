primitive exam4(f, a, b, c);
	output f;
	input a, b, c;
	
	table
		0 0 0 : 0;
		0 0 1 : 1;
		0 1 0 : 1;
		0 1 1 : 0;
		1 0 0 : 1;
		1 0 1 : 1;
		1 1 0 : 0;
		1 1 1 : 0;
	endtable
	
endprimitive

module t_exam4;
    reg a, b, c;
    wire f;
    exam4 E1(f, a, b, c);

    initial begin
	    $dumpfile("exam4.vcd");
	    $dumpvars(0, t_exam4);
        a = 1'b0; b = 1'b0; c = 1'b0;
        #1 a = 1'b0; b = 1'b0; c = 1'b1;
        #1 a = 1'b0; b = 1'b1; c = 1'b0;
        #1 a = 1'b0; b = 1'b1; c = 1'b1;
        #1 a = 1'b1; b = 1'b0; c = 1'b0;
        #1 a = 1'b1; b = 1'b0; c = 1'b1;
        #1 a = 1'b1; b = 1'b1; c = 1'b0;
        #1 a = 1'b1; b = 1'b1; c = 1'b1;
    end
    
    initial $monitor("time=%02d, {a,b,c}=%b%b%b, f=%b", $time, a, b, c, f);
endmodule