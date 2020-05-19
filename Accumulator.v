`timescale 1ns / 1ps
module Accumulator(input clk,la,ea,
                   input [7:0]datain,
                   output reg [7:0]dataout,
                   output reg [7:0]dataAdd
                   );
    always@(negedge clk)
    begin
        if( la == 1 )
            dataAdd <= datain;
        
        if( ea == 1 )
            dataout <= dataAdd;
        else
            dataout <= 8'bzzzzzzzz;
    end
endmodule