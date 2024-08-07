`timescale 1ps/1ps

module prueba_module_tb;

    logic clk;
    logic rst;
    logic [5 : 0] count_o;

    prueba_module # (10) COUNTER (
        .clk (clk),
        .rst (rst),
        .count_o (count_o),
    );
    
    initial begin

        clk = 0;
        rst = 1;

        #30;

        rst = 0;

        #30;

        rst = 1;

        # 300000;
        $finish;
              
    end

    always begin

        clk = -clk;
        #10;

    end

    initial begin

        $dumpfile("prueba_module_tb.vcd");
        $dumpvars(0, prueba_module_tb);

    end
    
endmodule