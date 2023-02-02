module DFF (
    input D,clk,
    output Q, Qb
);
    reg Q,Qb;
    always @(posedge clk) begin
        case (D)
            1'b0: Q=1'b0;
            1'b1: Q=1'b1;
            default: Q = 1'b0;
        endcase
        Qb=~Q;
    end   
endmodule