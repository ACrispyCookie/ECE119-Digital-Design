module D_FF(D, Clk, reset, Q);
    input D, Clk, reset;
    output reg Q;

    always @(posedge Clk, posedge reset)
    begin
      if(reset == 1)
        Q = 0;
      else 
        Q = D;
    end
endmodule
