`timescale 1ns / 1ps
module Add_Sub(input [7:0]A,B,
                input su,eu,
                output reg[7:0]S );
    initial begin
        S = 0;
    end
    always @(*)
    begin
        if( eu == 1 )
        begin
            if( su == 0)
                S = A + B;
            else
            if( su == 1 )
            begin
                 S = A - B ;
            end
        end
        else 
            S = 8'bzzzzzzzz;
    end
endmodule