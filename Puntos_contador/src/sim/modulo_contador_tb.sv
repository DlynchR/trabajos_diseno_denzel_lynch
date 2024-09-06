`timescale 1ps/1ps

module contador_tb();

reg clk, reset;
wire [3:0] salida;

contador dut(clk, reset, salida);

initial begin 

clk=0;
forever #5 clk=~clk;
end


initial begin

reset=1;
#20;
reset=0;

end


 initial begin

        $dumpfile("modulo_contador_tb.vcd");
        $dumpvars(0, modulo_contador_tb);

    end
endmodule 