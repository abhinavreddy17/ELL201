module FSM (
    input x,clk,
    output [3:0] Q,
    output y

);
wire D2,D1,D0,Qb2,Qb1,Qb0,y;
assign D2 = (Q[1] && Q[0]) || (Q[2] && Qb0);
assign D1 = (Q[1] && Qb0) || (Qb2 && Qb1 && Q[0]);
assign D0 = (Qb0 && (Q[2] || Q[1] || x));
assign y = (Q[1] && Q[0]) || (Q[2] && Q[0])  || (Qb2 && Qb1 && Qb0 && x);

DFF ff2(.D(D2), .clk(clk), .Q(Q[2]), .Qb(Qb2));
DFF ff1(.D(D1), .clk(clk), .Q(Q[1]), .Qb(Qb1));
DFF ff0(.D(D0), .clk(clk), .Q(Q[0]), .Qb(Qb0));
    
endmodule