`include "D_FF.v"
module JK_FF(J, K, Clk, reset, Q);
    input J, K, Clk, reset;
    output Q;
    wire w1, w2, w3, w4;

    not G1(w1, K);
    and G2(w2, J, !Q);
    and G3(w3, w1, Q);
    or G4(w4, w2, w3);
    D_FF D(w4, Clk, reset, Q);

endmodule