module gray_code_counter (
    input clk,
    output [3:0] Q
);
    wire S3,S2,S1,S0,R3,R2,R1,R0,Qb3,Qb2,Qb1,Qb0;
    assign S3 = (Q[2] && Qb1 && Qb0);
    assign R3 = (Qb2 && Qb1 && Qb0);
    assign S2 = (Qb3 && Q[1] && Qb0);
    assign R2 = (Q[3] && Q[1] && Qb0);
    assign S1 = (Qb3 && Qb2 && Q[0]) || (Q[3] && Q[2] && Q[0]);
    assign R1 = (Qb3 && Q[2] && Q[0]) || (Q[3] && Qb2 && Q[0]);
    assign S0 = (Qb3 && Qb2 && Qb1) || (Qb3 && Q[2] && Q[1]) || (Q[3] && Qb2 && Q[1]) || (Q[3] && Q[2] && Qb1);
    assign R0 = (Qb3 && Qb2 && Q[1]) || (Qb3 && Q[2] && Qb1) || (Q[3] && Qb2 && Qb1) || (Q[3] && Q[2] && Q[1]);

    SR_FF ff3(.clk(clk), .sr({S3,R3}), .Q(Q[3]), .Qb(Qb3));
    SR_FF ff2(.clk(clk), .sr({S2,R2}), .Q(Q[2]), .Qb(Qb2));
    SR_FF ff1(.clk(clk), .sr({S1,R1}), .Q(Q[1]), .Qb(Qb1));
    SR_FF ff0(.clk(clk), .sr({S0,R0}), .Q(Q[0]), .Qb(Qb0));

    
endmodule