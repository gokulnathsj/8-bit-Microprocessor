`timescale 1ns / 1ps

module Output_Reg(input [7:0]val,
                  input clk,lo,
                  output reg [7:0]out
                  );
        always@(posedge clk)
           if( lo == 1 )
           begin
                out <= val;
                $display("The final value : " , val);
           end 
 endmodule
 