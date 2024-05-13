`include "full_adder.v"
module add_sub_4_bit(S, Cout, A, B, M);
    output [3:0] S;
    output Cout;
    input [3:0] A;
    input [3:0] B;
    input M;
    wire [3:0] w;
    wire [2:0] c;

    xor G0(w[0], M, B[0]);
    xor G1(w[1], M, B[1]);
    xor G2(w[2], M, B[2]);
    xor G3(w[3], M, B[3]);
    full_adder FA0(S[0], c[0], A[0], w[0], M);
    full_adder FA1(S[1], c[1], A[1], w[1], c[0]);
    full_adder FA2(S[2], c[2], A[2], w[2], c[1]);
    full_adder FA3(S[3], Cout, A[3], w[3], c[2]);
endmodule