`include "add_sub_4_bit.v"
module t_add_sub_4_bit;
    reg [3:0] A;
    reg [3:0] B;
    reg M;
    wire [3:0] S;
    wire C;
    add_sub_4_bit FA(S, C, A, B, M);
    
    initial begin
	    $dumpfile("add_sub_4_bit.vcd");
	    $dumpvars(0, t_add_sub_4_bit);
        A = 4'b0000; B = 4'b0000; M = 1'b0;
        #10 A = 4'b1000; B = 4'b0100; M = 1'b0;
        #40 A = 4'b1100; B = 4'b1000; M = 1'b1;
    end
    
    initial $monitor("Input: A=%b B=%b M=%b Output: %b", A, B, M, S);
endmodule