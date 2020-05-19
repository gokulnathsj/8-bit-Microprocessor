`timescale 1ns / 1ps
module pc(
    input cp,ep,clk,clr,
    output reg[3:0]count
    );
    reg [3:0]temp;
    
    initial begin 
        temp = 0;
    end
    
    always@(*)
        if(cp == 1)
            temp = temp + 1; 
            
    always@( posedge clk )
    begin
       if(  ep == 1 )
       begin
            count <= temp;   
       end 
        else
            count <= 4'bzzzz;
    end
    
endmodule