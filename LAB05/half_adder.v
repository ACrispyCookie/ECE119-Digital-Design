module half_adder (S, C, A, B);
    output S, C;
    input A, B;

    xor G1(S, A, B);
    and G2(C, A, B);
endmodule