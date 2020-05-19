`timescale 1ns / 1ps
module Instruction_register(input [7:0]val,
                         input clk,li,ei,
                         output reg[3:0]address,
                         output reg[3:0]instruction
                         );
reg [3:0]temp_address;
always@(posedge clk)
begin

    if( ei == 1 )
        address <= temp_address;
    else if( li == 1 )
    begin
        instruction <= val[7:4];
        temp_address <= val[3:0];
    end
    else 
        address <= 4'bzzzz;
end

endmodule
