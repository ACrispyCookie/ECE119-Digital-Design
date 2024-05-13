module exam3(x, y , z);
    input x, y;
    output z;

    assign z = (x ^ y) & x;
endmodule

module t_exam3;
    reg x, y;
    wire z;
    exam3 E1(x, y, z);

    initial begin
        x = 1'b0; y = 1'b0;
        #10 x = 1'b0; y = 1'b1;
        #10 x = 1'b1; y = 1'b0;
        #10 x = 1'b1; y = 1'b1;
    end
    
    initial $monitor("Input: x=%b y=%b z=%b", x, y, z);
endmodule