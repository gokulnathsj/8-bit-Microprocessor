`timescale 1ns/1ps
module MAR(input [3:0]address_val,
           input clk,lm,
           output reg[3:0]address
           );
always@(negedge clk)
begin
    if(lm == 1)
        address <= address_val;
end

endmodule