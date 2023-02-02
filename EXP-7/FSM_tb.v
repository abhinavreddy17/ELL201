module FSM_tb;
    reg clk, x;
    wire y;

    initial #500 $finish;
    FSM M_UUT(.clk(clk), .x(x), .y(y));
    initial begin
        $dumpfile("FSM.vcd");
        $dumpvars(0,FSM_tb);
        clk = 0;
        forever begin
            #10 clk = ~clk;
        end
    end

    initial begin
        x=1;
    end

    
endmodule