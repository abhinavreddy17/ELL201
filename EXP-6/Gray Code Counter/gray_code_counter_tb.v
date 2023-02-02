module gray_code_counter_tb;

    wire [3:0] Q;
    reg clk;

    gray_code_counter M_UUT(.clk(clk), .Q(Q));
    
    initial #500 $finish;
    initial begin
        $dumpfile("grayCode.vcd");
        $dumpvars(0,gray_code_counter_tb); 
        clk = 0;
        forever begin
            #10 clk = ~clk;
        end
    end
    
endmodule