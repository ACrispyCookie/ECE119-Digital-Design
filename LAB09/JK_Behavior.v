module JK_Behavior_a(J, K, Clk, reset, Q);
    input J, K, Clk, reset;
    output reg Q;

    always @(posedge Clk, negedge reset) begin
        if(reset == 0)
            Q = 0;
        else
            if(Q == 0)
                Q = J;
            else 
                Q = !K;
    end
endmodule

module JK_Behavior_b(J, K, Clk, reset, Q);
    input J, K, Clk, reset;
    output reg Q;

    always @(posedge Clk, negedge reset) begin
        if(reset == 0)
            Q = 0;
        else
            case ({J, K})
                2'b00: Q = Q;
                2'b01: Q = 0;
                2'b10: Q = 1;
                2'b11: Q = !Q; 
            endcase
    end
endmodule

module t_JK_Behavior();
    reg J, K, Clk, reset;
    wire QA, QB;
    JK_Behavior_a JK1(J, K, Clk, reset, QA);
    JK_Behavior_b JK2(J, K, Clk, reset, QB);

    initial fork
        $dumpvars;
        $dumpfile("JK_Behavior.vcd");
        Clk = 0; J = 0; K = 0;
        #2 reset = 1;
        #3 reset = 0;
        #4 reset = 1;
        #10 J = 1;
        #20 K = 1;
        #40 J = 0;
        #50 J = 1;
    join
    always #5 Clk = !Clk;
    initial #70 $finish;
    initial $monitor("time=%02d reset=%b Clk=%b J=%b K=%b QA=%b QB=%b", $time, reset, Clk, J, K, QA, QB);
endmodule