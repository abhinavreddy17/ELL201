module sync_ring_counter (
    input clk,
    output [3:0] Q
);
    

    wire D3,D2,D1,D0,Qb3,Qb2,Qb1,Qb0;
    assign D3 = (Qb1 && Q[0]) || (Q[1] && Qb0);
    assign D2 = Q[3];
    assign D1 = Q[2];
    assign D0 = Q[1];  
    

    DFF2 ff3(.clk(clk), .D(D3), .Q(Q[3]), .Qb(Qb3));
    DFF1 ff2(.clk(clk), .D(D2), .Q(Q[2]), .Qb(Qb2));
    DFF2 ff1(.clk(clk), .D(D1), .Q(Q[1]), .Qb(Qb1));
    DFF1 ff0(.clk(clk), .D(D0), .Q(Q[0]), .Qb(Qb0));
    
endmodule