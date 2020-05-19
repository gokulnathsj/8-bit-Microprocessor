`timescale 1ns / 1ps

module Reg_B(input [7:0]A,
        input clk,lb,
        output reg [7:0]out
        );
       always @(negedge clk && lb == 1)
            out <= A;
 endmodule
        