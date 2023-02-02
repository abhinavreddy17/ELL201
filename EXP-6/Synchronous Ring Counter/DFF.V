module DFF1 (
    input D,clk,
    output Q, Qb
);
    initial begin
        Q = 1'b1;
        Qb = 1'b0;
    end
    reg Q, Qb;
    always @(posedge clk) begin
        Q=D;
        Qb=~Q;
    end   
endmodule