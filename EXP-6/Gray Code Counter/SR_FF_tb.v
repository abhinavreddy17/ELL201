`timescale 1ns/1ns
module SR_FF_tb;
    wire Q,Q_bar;
    reg [1:0] sr;
    reg clk;

    SR_FF M_UUT (.sr(sr), .clk(clk), .Q(Q));
    
    initial #500 $finish;
    initial begin
        $dumpfile("SR_FF.vcd");
        $dumpvars(0,SR_FF_tb);
        clk = 0;
            forever begin
                #10 clk = ~clk;
            end 
    end

    initial begin
        sr[1] = 1; sr[0] = 0;
        #10 sr[1] = 1; sr[0] = 0;
        #30 sr[1] = 0; sr[0] = 0;
        #50 sr[1] = 0; sr[0] = 1;
        #70 sr[1] = 1; sr[0] = 1;
    end
endmodule