`include "D_FF.v"
module T_FF(T, Clk, reset, Q);
    input T, Clk, reset;
    output Q;
    wire w1;

    xor G1(w1, T, Q);
    D_FF D(w1, Clk, reset, Q);
endmodule