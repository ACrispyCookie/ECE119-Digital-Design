module D_latch (D, enable, Q);
  input D, enable;
  output Q;
  reg Q;

  always @(D or enable)
  begin
    if(enable == 1)
      Q = D;
  end

endmodule

