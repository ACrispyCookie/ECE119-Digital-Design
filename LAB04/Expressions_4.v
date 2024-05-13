module Expression_4_1(a, b, c, out);
  input a, b, c;
  output out;
  wire w1, w2;
  
  not #(10) G1(w1, c);
  and #(30) G2(w2, a, b);
  or #(20) G3(out, w2, w1);
endmodule

module Expression_4_2(a, b, c, d, e, out);
  input a, b, c, d, e;
  output out;
  wire w1, w2, w3, w4;
  
  not #(10) G1(w1, c);
  and #(30) G2(w2, b, w1);
  nor #(40) G3(w3, a, e);
  and #(30) G4(w4, d, w3);
  or #(20) G5(out, w4, w2);
endmodule