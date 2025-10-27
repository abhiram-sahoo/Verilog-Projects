`timescale 1ns / 1ps

module tb_and;
    reg a, b;
    wire and_out;
         
    demux_and_gate dut(a, b, and_out);
    initial begin
            a= 1'b0; b= 1'b0;
        #10 a= 1'b0; b= 1'b1;
        #10 a= 1'b1; b= 1'b0;
        #10 a= 1'b1; b= 1'b1;
    end
    initial 
     begin $monitor("a: %b  b: %b  and: %b ",a, b, and_out);
     #40 $finish;
     end
endmodule
