module SR_FF (
    input [1:0] sr,
    input clk,
    output Q,Qb
);
    reg Q,Qb;
    always @(posedge clk) begin
        case (sr)
            2'b00: Q=Q;
            2'b01: Q=1'b0;
            2'b10: Q=1'b1;
            2'b11: Q=1'bz;
            default: Q=1'b0;
        endcase
        Qb=~Q;
    end

   
endmodule