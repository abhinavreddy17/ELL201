module sync_ring_counter_tb;
    
    wire [3:0] Q;
    reg clk;

    sync_ring_counter M_UUT(.clk(clk), .Q(Q));
    
    initial #500 $finish;
    initial begin
        $dumpfile("syncRing.vcd");
        $dumpvars(0,sync_ring_counter_tb);
        clk = 0;
        forever begin
            #10 clk = ~clk;
        end
    end

endmodule