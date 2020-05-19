`timescale 1ns/1ps
module Ram( input [3:0]address,
            input ce,
            output reg[7:0]data_out );
    reg [7:0]memory[0:15];
    initial begin
        memory[0] =  8'b00001010;
        memory[1] =  8'b00101001;
        memory[2] =  8'b00011011;
        memory[3] =  8'b00011100;
        memory[4] =  8'b1110zzzz;
        memory[5] =  8'b1111zzzz;
        memory[6] =  8'bzzzzzzzz;
        memory[7] =  8'bzzzzzzzz;
        memory[8] =  8'bzzzzzzzz;
        //data 
        memory[9] =  8'b00000000;//0
        memory[10] =  8'b00000001;//1
        memory[11] =  8'b00000001;//1
        memory[12] =  8'b00000001;//2
        memory[13] =  8'b00001001;
        memory[14] =  8'b00001001;
        memory[15] =  8'b00011010;
    end
    
    always @(ce)
    begin
        if( ce == 1 )
            data_out <=  memory[address];
        else
            data_out <= 8'bzzzzzzzz;
    end
endmodule