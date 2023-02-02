module DFF2 (
    input D,clk,
    output Q, Qb
);
    initial begin
        Q = 1'b0;
        Qb = 1'b1;
    end
    reg Q, Qb;
    always @(posedge clk) begin
        Q=D;
        Qb=~Q;
    end   
endmodule