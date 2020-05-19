`timescale 1ns / 1ps
module control_Unit(input [3:0]ireg,
                    input clk,clr,
                    output reg cp,ep,lm,ce,li,ei,la,ea,su,eu,lb,lo
                    );

reg [5:0]count;

always@(negedge clk) 
begin
    
    if( clr == 1 )
    begin
        count <= 6'b000001;
       
    end
    else 
    begin
       count <= count<<1;                                                              
       count[0] <= count[5];
       
    end
 
 end       


always@(count)
begin:block
    if( count == 6'b000001 )
    begin    

        cp <= 0 ;
        ep <= 1 ;
        lm <= 1 ;
        ce <= 0 ;
        li <= 0 ;
        ei <= 0 ;
        la <= 0 ;
        ea <= 0 ;
        su <= 0 ;
        eu <= 0 ;
        lb <= 0 ;
        lo <= 0 ;
    end
    else if( count == 6'b000010 )
    begin

        cp <= 1 ;
        ep <= 0 ;
        lm <= 0 ;
        ce <= 0 ;
        li <= 0 ;
        ei <= 0 ;
        la <= 0 ;
        ea <= 0 ;
        su <= 0 ;
        eu <= 0 ;
        lb <= 0 ;
        lo <= 0 ;
    end
    else if( count == 6'b000100 )
    begin
        cp <= 0 ;
        ep <= 0 ;
        lm <= 0 ;
        ce <= 1 ;
        li <= 1 ;
        ei <= 0 ;
        la <= 0 ;
        ea <= 0 ;
        su <= 0 ;
        eu <= 0 ;
        lb <= 0 ;
        lo <= 0 ;
    end
    else if( count == 6'b001000 )
    begin
            if( ireg == 0 )
            begin
                cp <= 0 ;
                ep <= 0 ;
                lm <= 1 ;
                ce <= 0 ;
                li <= 0 ;
                ei <= 1 ;
                la <= 0 ;
                ea <= 0 ;
                su <= 0 ;
                eu <= 0 ;
                lb <= 0 ;
                lo <= 0 ;

            end
            else if( ireg == 1 )
            begin
                    cp <= 0 ;
                    ep <= 0 ;
                    lm <= 1 ;
                    ce <= 0 ;
                    li <= 0 ;
                    ei <= 1 ;
                    la <= 0 ;
                    ea <= 0 ;
                    su <= 0 ;
                    eu <= 0 ;
                    lb <= 0 ;
                    lo <= 0 ; 
            end

            else if( ireg == 2 )
            begin
                cp <= 0 ;
                ep <= 0 ;
                lm <= 1 ;
                ce <= 0 ;
                li <= 0 ;
                ei <= 1 ;
                la <= 0 ;
                ea <= 0 ;
                su <= 1 ;
                eu <= 0 ;
                lb <= 0 ;
                lo <= 0 ;
            end

            else if( ireg == 4'b1110 )
            begin
                cp <= 0 ;
                ep <= 0 ;
                lm <= 0 ;
                ce <= 0 ;
                li <= 0 ;
                ei <= 0 ;
                la <= 0 ;
                ea <= 1 ;
                su <= 0 ;
                eu <= 0 ;
                lb <= 0 ;
                lo <= 1 ;
            end
            else if( ireg == 4'b1111 )
            begin
                    disable block;  
                    cp <= 0 ;
                    ep <= 0 ;
                    lm <= 0 ;
                    ce <= 0 ;
                    li <= 0 ;
                    ei <= 0 ;
                    la <= 0 ;
                    ea <= 0 ;
                    su <= 0 ;
                    eu <= 0 ;
                    lb <= 0 ;
                    lo <= 0 ; 
            end
        end
        
        
        else if( count == 6'b010000 )
        begin
            if( ireg == 0 )
            begin
                cp <= 0 ;
                ep <= 0 ;
                lm <= 0 ;
                ce <= 1 ;
                li <= 0 ;
                ei <= 0 ;
                la <= 1 ;
                ea <= 0 ;
                su <= 0 ;
                eu <= 0 ;
                lb <= 0 ;
                lo <= 0 ;
             end
             else if ( ireg == 1 )
             begin
                cp <= 0 ;
                ep <= 0 ;
                lm <= 0 ;
                ce <= 1 ;
                li <= 0 ;
                ei <= 0 ;
                la <= 0 ;
                ea <= 0 ;
                su <= 0 ;
                eu <= 0 ;
                lb <= 1 ;
                lo <= 0 ;                         
            end
            else if ( ireg == 2 )
            begin
               cp <= 0 ;
               ep <= 0 ;
               lm <= 0 ;
               ce <= 1 ;
               li <= 0 ;
               ei <= 0 ;
               la <= 0 ;
               ea <= 0 ;
               su <= 1 ;
               eu <= 0 ;
               lb <= 1 ;
               lo <= 0 ;                         
           end
            else if( ireg == 4'b1110 )
            begin
                cp <= 0 ;
                ep <= 0 ;
                lm <= 0 ;
                ce <= 0 ;
                li <= 0 ;
                ei <= 0 ;
                la <= 0 ;
                ea <= 0 ;
                su <= 0 ;
                eu <= 0 ;
                lb <= 0 ;
                lo <= 0 ;
            end
            else if( ireg == 4'b1111 )
            begin
                disable block; 
                cp <= 0 ;
                ep <= 0 ;
                lm <= 0 ;
                ce <= 0 ;
                li <= 0 ;
                ei <= 0 ;
                la <= 0 ;
                ea <= 0 ;
                su <= 0 ;
                eu <= 0 ;
                lb <= 0 ;
                lo <= 0 ;                 
            end
        end
        else if( count == 6'b100000 )
        begin
            if( ireg == 0 )
            begin
                cp <= 0 ;
                ep <= 0 ;
                lm <= 0 ;
                ce <= 0 ;
                li <= 0 ;
                ei <= 0 ;
                la <= 0 ;
                ea <= 0 ;
                su <= 0 ;
                eu <= 0 ;
                lb <= 0 ;
                lo <= 0 ; 
            end
            else if( ireg == 1 )
            begin
                cp <= 0 ;
                ep <= 0 ;
                lm <= 0 ;
                ce <= 0 ;
                li <= 0 ;
                ei <= 0 ;
                la <= 1 ;
                ea <= 0 ;
                su <= 0 ;
                eu <= 1 ;
                lb <= 0 ;
                lo <= 0 ;
            end
            else if( ireg == 2 )
            begin
                cp <= 0 ;
                ep <= 0 ;
                lm <= 0 ;
                ce <= 0 ;
                li <= 0 ;
                ei <= 0 ;
                la <= 1 ;
                ea <= 0 ;
                su <= 1 ;
                eu <= 1 ;
                lb <= 0 ;
                lo <= 0 ;
            end
            else if( ireg == 4'b1110 )
            begin
                cp <= 0 ;
                ep <= 0 ;
                lm <= 0 ;
                ce <= 0 ;
                li <= 0 ;
                ei <= 0 ;
                la <= 0 ;
                ea <= 0 ;
                su <= 0 ;
                eu <= 0 ;
                lb <= 0 ;
                lo <= 0 ;
            end
            else if( ireg == 4'b1111)
            begin
                cp <= 0 ;
                ep <= 0 ;
                lm <= 0 ;
                ce <= 0 ;
                li <= 0 ;
                ei <= 0 ;
                la <= 0 ;
                ea <= 0 ;
                su <= 0 ;
                eu <= 0 ;
                lb <= 0 ;
                lo <= 0 ;
                disable block; 
            end
        end
                
    end 
    
endmodule