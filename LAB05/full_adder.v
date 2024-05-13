`include "half_adder.v"
module full_adder (S, C, A, B, Cin);
    output S, C;
    input A, B, Cin;
    wire w1, w2, w3;

    half_adder A1(w1, w3, A, B);
    half_adder A2(S, w2, w1, Cin);
    or G1(C, w2, w3);
endmodule