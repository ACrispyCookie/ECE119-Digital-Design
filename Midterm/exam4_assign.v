module exam4(a, b, c, f);
    input a, b, c;
    output f;

    assign f = !a & b & !c | a & !b | !b & c;
endmodule

module t_exam4;
    reg a, b, c;
    wire f;
    exam4 E1(a, b, c, f);

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