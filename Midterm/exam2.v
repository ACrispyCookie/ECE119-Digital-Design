module exam2(a, b, c, f1);
    input a, b, c;
    output f1;
    wire w1, w2, w3, w4, w5, w6, w7;

    not G1(w1, a);
    not G2(w2, c);
    and G3(w3, b, w1);
    and G4(w4, b, w2);
    not G5(w5, w4);
    and G6(w6, w3, w4);
    or G7(w7, w3, w5);
    or G8(f1, w6, w7);

endmodule